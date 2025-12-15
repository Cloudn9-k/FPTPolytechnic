package com.example.demo.service;

import com.example.demo.entity.DanhMuc;
import com.example.demo.entity.SanPham;
import com.example.demo.exception.ApiException;
import com.example.demo.repository.DanhMucRepository;
import com.example.demo.repository.SanPhamRepository;
import com.example.demo.request.SanPhamRequest;
import com.example.demo.response.SanPhamResponse;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class SanPhamService {
    @Autowired
    SanPhamRepository sanPhamRepository;

    public List<SanPhamResponse> getAll() {
        return sanPhamRepository.findAll().stream().map(SanPhamResponse::new).toList();
    }
    public List<SanPhamResponse> phanTrang(Integer page, Integer pageSize) {
        Pageable pageable = PageRequest.of(page, pageSize);
        return sanPhamRepository.findAll(pageable).getContent().stream().map(SanPhamResponse::new).toList();
    }
    public void add(SanPhamRequest sanPhamRequest) {
        SanPham sanPham = new SanPham();
        BeanUtils.copyProperties(sanPhamRequest, sanPham);
        sanPhamRepository.save(sanPham);
    }
    public void update(Integer id, SanPhamRequest sanPhamRequest) {
        SanPham sanPham = sanPhamRepository.findById(id).orElseThrow(() ->new ApiException("404","khong tim thay id" ));
        BeanUtils.copyProperties(sanPhamRequest, sanPham);
        sanPhamRepository.save(sanPham);
    }
    public void delete(Integer id) {
        if (sanPhamRepository.existsById(id)) {
            sanPhamRepository.deleteById(id);
        }else{
            throw new ApiException("404","khong tim thay id");
        }
    }
}
