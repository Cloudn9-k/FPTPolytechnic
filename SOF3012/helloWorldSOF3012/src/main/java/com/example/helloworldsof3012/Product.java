package com.example.helloworldsof3012;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "Product")
@Getter
@Setter
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer idpd;
    @Column(name = "name")
    private String NamePD;
    @Column(name = "price")
    private BigDecimal pricePD;
    @Column(name = "in_stock")
    private Integer in_stock;
    @Column(name = "created_at")
    @UpdateTimestamp
    private Date createAt;
}
