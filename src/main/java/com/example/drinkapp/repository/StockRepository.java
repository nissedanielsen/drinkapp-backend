package com.example.drinkapp.repository;

import com.example.drinkapp.model.Stock;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface StockRepository extends JpaRepository<Stock, Long> {
    List<Stock> findListByMemberId(long memberId);

    Optional<Stock> findStockByMemberId(Long memberId);
}

