package com.example.lab3_2.module;

import jakarta.persistence.*;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
@Entity
@Table(name = "RetroGame")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RetroGame {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "GameID")
    private int gameID;

    @Column(name = "Title", nullable = false, length = 100)
    private String title;

    @Column(name = "Console", length = 50)
    private String console;

    @Column(name = "ReleaseYear")
    private Integer releaseYear;

    @Column(name = "IsMultiplayer")
    private Boolean isMultiplayer;

    @Column(name = "Rating")
    private Double rating;
}