package com.example.demau.service;

import com.example.demau.entity.DonHang;
import com.example.demau.exception.ApiException;
import com.example.demau.repository.DonHangRepository;
import com.example.demau.request.DonHangRequest;
import com.example.demau.response.DonHangResponse;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
// hay quên @Service nè
@Service
public class DonHangService {
    @Autowired
    DonHangRepository donHangRepository;

    public List<DonHangResponse> getAll(){
        return donHangRepository.findAll().stream().map(DonHangResponse::new).toList();
    }
    public List<DonHangResponse> phanTrang(Integer id, Integer pageSize){
        Pageable pageable = PageRequest.of(id,pageSize);
        return donHangRepository.findAll(pageable).getContent().stream().map(DonHangResponse::new).toList();
    }
    public void add(DonHangRequest donHangRequest) {
        DonHang donHang = new DonHang();
        BeanUtils.copyProperties(donHangRequest, donHang);
        donHangRepository.save(donHang);
    }
    public void update(DonHangRequest donHangRequest) {
        DonHang donHang = donHangRepository.findById(donHangRequest.getId())
                .orElseThrow(() -> new ApiException("404", "Không tìm thấy đơn hàng cần sửa"));
        BeanUtils.copyProperties(donHangRequest, donHang);
        donHangRepository.save(donHang);
    }
    public void delete(Integer id) {
        if(!donHangRepository.existsById(id)){
            throw new ApiException("noID", "khong tim thay id");
        }
        donHangRepository.deleteById(id);

    }

}
