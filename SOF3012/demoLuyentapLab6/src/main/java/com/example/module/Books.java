package com.example.module;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Books")
public class Books {
//    BookID INT PRIMARY KEY IDENTITY(1,1),
//    Title NVARCHAR(200),
//    Author NVARCHAR(100),
//    Category NVARCHAR(50),
//    Publisher NVARCHAR(100),
//    QuantityInStock INT,
//    Price DECIMAL(10,2),
//    IsAvailable BIT DEFAULT 1,
//    Summary NVARCHAR(MAX),
//    PublishedDate DATE,
//    ReturnDueDate DATE,
//    CreatedAt DATETIME DEFAULT GETDATE(),
//    ISBN NVARCHAR(50)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "BookID")
    private Integer id;
    @Column(name = "Title")
    private String title;
    @Column(name = "Author")
    private String author;
    @Column(name = "Category")
    private String category;
    @Column(name = "Publisher")
    private String publisher;
    @Column(name = "QuantityInStock")
    private Integer quantityInStock;
    @Column(name = "Price")
    private BigDecimal price;
    @Column(name = " IsAvailable")
    private Boolean isAvailable;
    @Column(name = "Summary")
    private String summary;
    @Column(name="PublishedDate")
    private Date publishedDate;
    @Column(name = "ReturnDueDate")
    private Date returnDueDate;
    @Column(name = "CreatedAt")
    private LocalDateTime createdAt;
    @Column(name = "ISBN")
    private String isbn;

}
