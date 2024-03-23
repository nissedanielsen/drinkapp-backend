package com.example.drinkapp.service;

import com.example.drinkapp.model.Stock;
import com.example.drinkapp.repository.StockRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StockService {

    private final StockRepository stockRepository;

    @Autowired
    public StockService(StockRepository stockRepository) {
        this.stockRepository = stockRepository;
    }

    public List<Stock> getAllStocks() {
        return stockRepository.findAll();
    }

    public Optional<Stock> getStockById(long id) {
        return stockRepository.findById(id);
    }

    public Stock saveStock(Stock stock) {
        return stockRepository.save(stock);
    }

    public void deleteStock(long id) {
        stockRepository.deleteById(id);
    }

    public List<Stock> getStocksByMemberId(long memberId) {
        return stockRepository.findListByMemberId(memberId);
    }

    public Optional<Stock> getStockByMemberId(long memberId) {
        return stockRepository.findStockByMemberId(memberId);
    }



}
