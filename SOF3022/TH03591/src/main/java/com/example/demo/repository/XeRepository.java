package com.example.demo.repository;

import com.example.demo.model.Xe;
import org.hibernate.type.descriptor.converter.spi.JpaAttributeConverter;
import org.springframework.data.jpa.repository.JpaRepository;

public interface XeRepository extends JpaRepository<Xe,Integer> {
}
