package com.example.lab3_2.module;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "TalentPet")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TalentPet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PetID")
    private int petID;

    @Column(name = "Name", length = 50)
    private String name;

    @Column(name = "Species", length = 50)
    private String species;

    @Column(name = "TrickPerformed", length = 100)
    private String trickPerformed;

    @Column(name = "Score")
    private Integer score;

    @Column(name = "IsFinalist")
    private Boolean isFinalist;
}
