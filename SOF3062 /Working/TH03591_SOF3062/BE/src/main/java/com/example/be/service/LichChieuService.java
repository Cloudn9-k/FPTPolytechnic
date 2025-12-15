package com.example.be.service;

import com.example.be.entity.LichChieu;
import com.example.be.exception.ApiException;
import com.example.be.repository.LichChieuRepository;
import com.example.be.request.LichChieuRequest;
import com.example.be.response.LichChieuResponse;
import org.hibernate.query.Page;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class LichChieuService {
    @Autowired
    LichChieuRepository lichChieuRepository;
    public List<LichChieuResponse> getAll() {
        return lichChieuRepository.findAll().stream().map(LichChieuResponse::new).toList();
    }
    public List<LichChieuResponse> phanTrang(Integer page, Integer pageSize) {
        Pageable pageable = PageRequest.of(page, pageSize);
        return lichChieuRepository.findAll(pageable).getContent().stream().map(LichChieuResponse::new).toList();
    }

    public void add(LichChieuRequest lichChieuRequest) {
        LichChieu lichChieu = new LichChieu();
        BeanUtils.copyProperties(lichChieuRequest, lichChieu);
        lichChieuRepository.save(lichChieu);
    }
    public void update(Integer id,LichChieuRequest lichChieuRequest) {
        lichChieuRepository.findById(id).orElseThrow(()->new ApiException("404","ko tim thay id"));
        LichChieu lichChieu = new LichChieu();
        BeanUtils.copyProperties(lichChieuRequest, lichChieu);
        lichChieuRepository.save(lichChieu);
    }
    public void delete(Integer id) {
       if(lichChieuRepository.existsById(id)) {
           lichChieuRepository.deleteById(id);
       }else {
           throw new ApiException("404","ko tim thay id");
       }
    }
}
