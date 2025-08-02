package com.example.module;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Products")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ProductID")
    private Integer id;
    @Column(name = "ProductName", length = 100)
    private String productName;
    @Column(name = "Category",length = 50)
    private String category;
    @Column(name = "Supplier", length = 100)
    private String supplier;
    @Column(name = "QuantityInStock")
    private Integer quantityInStock;
    @Column(name = "UnitPrice")
    private Double unitPrice;
    @Column(name = "ReorderLevel")
    private Integer reorderLevel;
    @Column(name = "Discontinued")
    private Boolean discontinued;
    @Column(name = "Description")
    private String description;
    @Column(name = "ManufactureDate")
    private Date manufactureDate;
        @Column(name = "ExpiryDate")
    private Date expiryDate;
        @Column(name = "CreatedAt")
    private LocalDateTime createdAt;
        @Column(name = "Barcode")
    private String barcode;

//    ProductID INT PRIMARY KEY IDENTITY(1,1),
//    ProductName NVARCHAR(100),
//    Category NVARCHAR(50),
//    Supplier NVARCHAR(100),
//    QuantityInStock INT,
//    UnitPrice DECIMAL(10, 2),
//    ReorderLevel INT,
//    Discontinued BIT DEFAULT 0,
//    Description NVARCHAR(MAX),
//    ManufactureDate DATE,
//    ExpiryDate DATE,
//    CreatedAt DATETIME DEFAULT GETDATE(),
//    Barcode NVARCHAR(50)
}
