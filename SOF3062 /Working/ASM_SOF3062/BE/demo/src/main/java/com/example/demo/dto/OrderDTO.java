package com.example.demo.dto;
import lombok.Data;
import java.util.List;

@Data
public class OrderDTO {
    String address;
    List<OrderDetailDTO> details;

    @Data
    public static class OrderDetailDTO {
        Integer productId;
        Integer quantity;
        Double price;
    }
}