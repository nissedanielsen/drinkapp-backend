package com.example.drinkapp.controller;

import com.example.drinkapp.model.Drink;
import com.example.drinkapp.service.DrinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.Random;

@RestController
@RequestMapping("/drinks")
public class DrinkController {

    private final DrinkService drinkService;

    @Autowired
    public DrinkController(DrinkService drinkService) {
        this.drinkService = drinkService;
    }

    @GetMapping
    public List<Drink> getAllDrinks() {
        System.out.println("Fetching drinks");
        return drinkService.getAllDrinks();
    }



    @GetMapping("/{id}")
    public ResponseEntity<Drink> getDrinkById(@PathVariable Long id) {
        Optional<Drink> drink = drinkService.getDrinkById(id);
        return drink.map(value -> new ResponseEntity<>(value, HttpStatus.OK))
                .orElseGet(() -> new ResponseEntity<>(HttpStatus.NOT_FOUND));
    }

    @PostMapping
    public ResponseEntity<Drink> saveDrink(@RequestBody Drink drink) {
        Drink savedDrink = drinkService.saveDrink(drink);
        return new ResponseEntity<>(savedDrink, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteDrink(@PathVariable Long id) {
        drinkService.deleteDrink(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
    @GetMapping("/makable/{userId}")
    public ResponseEntity<List<Drink>> getMakableDrinksByUserId(@PathVariable Long userId) {
        List<Drink> makableDrinks = drinkService.getMakableDrinksByUserId(userId);


        if (!makableDrinks.isEmpty()) {
            return new ResponseEntity<>(makableDrinks, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
    }

    @GetMapping("/random")
    public Drink getRandomDrink() {
        List<Drink> allDrinks = drinkService.getAllDrinks();

        // Check if there are any drinks in the database
        if (allDrinks.isEmpty()) {
            // You may want to handle this case appropriately (e.g., return a specific response)
            return null;
        }

        int randomIndex = new Random().nextInt(allDrinks.size());

        // Return the randomly selected drink
        return allDrinks.get(randomIndex);
    }
}
