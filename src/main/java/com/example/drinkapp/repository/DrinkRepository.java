package com.example.drinkapp.repository;

import com.example.drinkapp.model.Drink;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DrinkRepository extends JpaRepository<Drink, Long> {
    // You can add custom queries or methods here if needed
}
