package com.example.drinkapp.service;

import com.example.drinkapp.model.*;
import com.example.drinkapp.repository.DrinkRepository;
import com.example.drinkapp.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class DrinkService {

    private final DrinkRepository drinkRepository;
    private final StockService stockService;
    private final MemberService memberService;
    private final MemberRepository memberRepository;


    @Autowired
    public DrinkService(DrinkRepository drinkRepository, StockService stockService, MemberService memberService, MemberRepository memberRepository) {
        this.drinkRepository = drinkRepository;
        this.stockService = stockService;
        this.memberService = memberService;
        this.memberRepository = memberRepository;
    }

    public List<Drink> getAllDrinks() {
        return drinkRepository.findAll();
    }

    public Optional<Drink> getDrinkById(long id) {
        return drinkRepository.findById(id);
    }

    public Drink saveDrink(Drink drink) {
        return drinkRepository.save(drink);
    }

    public void deleteDrink(long id) {
        drinkRepository.deleteById(id);
    }

    public List<Drink> getMakableDrinksByUserId(Long userId) {
        Optional<Stock> stockOptional = stockService.getStockByMemberId(userId);

        if (stockOptional.isPresent()) {
            Stock stock = stockOptional.get();

            // Retrieve all drinks
            List<Drink> allDrinks = getAllDrinks();

            // Filter and return the drinks that can be made with the user's stock
            return filterMakableDrinks(allDrinks, stock);
        } else {
            return Collections.emptyList();
        }
    }



    private List<Drink> filterMakableDrinks(List<Drink> drinks, Stock stock) {
        List<Drink> makableDrinks = new ArrayList<>();

        for (Drink drink : drinks) {
            if (canMakeDrink(drink, stock)) {
                makableDrinks.add(drink);
            }
        }

        return makableDrinks;
    }

    private boolean canMakeDrink(Drink drink, Stock stock) {
        List<DrinkIngredient> requiredIngredients = drink.getIngredients();

        for (DrinkIngredient requiredIngredient : requiredIngredients) {
            Ingredient ingredient = requiredIngredient.getIngredient();
            double requiredQuantity = requiredIngredient.getQuantity();

            boolean hasIngredient = stock.getIngredients()
                    .stream()
                    .anyMatch(stockIngredient -> stockIngredient.getIngredient().getId().equals(ingredient.getId()));

            if (!hasIngredient) {
                return false;
            }

            Double availableQuantity = stock.getIngredients()
                    .stream()
                    .filter(stockIngredient -> stockIngredient.getIngredient().getId().equals(ingredient.getId()))
                    .mapToDouble(StockIngredient::getQuantity)
                    .sum();

            if (availableQuantity < requiredQuantity) {
                return false;
            }
        }

        return true;
    }



}
