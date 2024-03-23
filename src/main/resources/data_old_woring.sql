-- Create Ingredient table
CREATE TABLE IF NOT EXISTS ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    category VARCHAR(255),
    abv DOUBLE
);

-- Insert Spirits
INSERT INTO ingredient (name, category, abv) VALUES
('Vodka', 'Spirit', 40.0),
('Rum', 'Spirit', 42.0),
('Gin', 'Spirit', 45.0),
('Tequila', 'Spirit', 38.0),
('Whiskey', 'Spirit', 40.0),
('Brandy', 'Spirit', 35.0),
('Vermouth', 'Spirit', 18.0),
('Cognac', 'Spirit', 40.0),
('Absinthe', 'Spirit', 65.0),
('Sambuca', 'Spirit', 38.0),
('Campari', 'Spirit', 25.0),
('Triple Sec', 'Spirit', 30.0),
('Baileys', 'Spirit', 17.0),
('Kahlúa', 'Spirit', 20.0),
('Grand Marnier', 'Spirit', 40.0);

-- Insert Liqueurs
INSERT INTO ingredient (name, category, abv) VALUES
('Amaretto', 'Liqueur', 28.0),
('Chambord', 'Liqueur', 16.0),
('Frangelico', 'Liqueur', 24.0),
('Midori', 'Liqueur', 20.0),
('Cointreau', 'Liqueur', 40.0),
('Chartreuse', 'Liqueur', 55.0),
('Curaçao', 'Liqueur', 30.0),
('Galliano', 'Liqueur', 42.0),
('Drambuie', 'Liqueur', 40.0),
('Triple Sec', 'Liqueur', 30.0);

-- Insert Non-Liquors
INSERT INTO ingredient (name, category, abv) VALUES
('Simple Syrup', 'Non-Liquor', 0.0),
('Lemon Juice', 'Non-Liquor', 0.0),
('Lime Juice', 'Non-Liquor', 0.0),
('Egg White', 'Non-Liquor', 0.0),
('Orange Bitters', 'Non-Liquor', 0.0),
('Grenadine', 'Non-Liquor', 0.0),
('Mint Leaves', 'Non-Liquor', 0.0),
('Sugar Cube', 'Non-Liquor', 0.0),
('Club Soda', 'Non-Liquor', 0.0),
('Ginger Beer', 'Non-Liquor', 0.0);

-- Insert Juices
INSERT INTO ingredient (name, category, abv) VALUES
('Orange Juice', 'Juice', 0.0),
('Pineapple Juice', 'Juice', 0.0),
('Cranberry Juice', 'Juice', 0.0),
('Grapefruit Juice', 'Juice', 0.0),
('Tomato Juice', 'Juice', 0.0);

-- Insert Garnishes
INSERT INTO ingredient (name, category, abv) VALUES
('Lime Wedge', 'Garnish', 0.0),
('Lemon Wedge', 'Garnish', 0.0),
('Orange Twist', 'Garnish', 0.0),
('Cherry', 'Garnish', 0.0),
('Mint Sprig', 'Garnish', 0.0),
('Olive', 'Garnish', 0.0),
('Celery Stick', 'Garnish', 0.0),
('Orgeat', 'Garnish', 0.0);

-- Create drink table
CREATE TABLE IF NOT EXISTS drink (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    type VARCHAR(255)
);

-- Inserting data into drink table
INSERT INTO drink (name, description, type) VALUES
('Margarita', 'Classic tequila cocktail with lime and triple sec', 'Short Drink'),
('Martini', 'Iconic gin and vermouth cocktail with an olive garnish', 'Short Drink'),
('Mojito', 'Refreshing rum cocktail with mint, lime, and simple syrup', 'Long Drink'),
('Old Fashioned', 'Bourbon-based classic cocktail with sugar, bitters, and an orange twist', 'Short Drink'),
('Cosmopolitan', 'Vodka-based cocktail with cranberry and citrus flavors', 'Short Drink'),
('Negroni', 'Italian classic with gin, vermouth, and Campari', 'Short Drink'),
('Piña Colada', 'Tropical rum-based cocktail with coconut and pineapple', 'Long Drink'),
('Whiskey Sour', 'Whiskey, lemon juice, and simple syrup', 'Short Drink'),
('Bloody Mary', 'Vodka and tomato juice-based cocktail with spices', 'Long Drink'),
('Mai Tai', 'Tiki cocktail with rum, lime, and orgeat syrup', 'Long Drink');

INSERT INTO drink (name, description, type)
VALUES
  ('Gin and Tonic', 'Classic gin and tonic with a lime wedge', 'Long Drink'),
  ('Rum and Coke', 'Simple and popular rum and cola combination', 'Long Drink'),
  ('Whiskey Highball', 'Refreshing whiskey and soda with a lemon twist', 'Long Drink'),
  ('Screwdriver', 'Vodka and orange juice cocktail', 'Long Drink'),
  ('Mint Julep', 'Bourbon-based cocktail with fresh mint and sugar', 'Short Drink'),
  ('Dark and Stormy', 'Rum and ginger beer combination with a lime wedge', 'Long Drink'),
  ('White Russian', 'Vodka and coffee liqueur cocktail with cream', 'Short Drink'),
  ('Blackberry Bramble', 'Gin-based cocktail with blackberry liqueur and lemon', 'Short Drink'),
  ('Paloma', 'Tequila and grapefruit soda cocktail with a lime wedge', 'Long Drink'),
  ('Espresso Martini', 'Vodka and coffee liqueur cocktail with espresso', 'Short Drink'),
  ('Kamikaze', 'Vodka, triple sec, and lime juice shot', 'Shot'),
  ('B52', 'Layered shot with Kahlúa, Baileys, and Grand Marnier', 'Shot'),
  ('Lemon Drop', 'Vodka, triple sec, and lemon juice shot with sugar rim', 'Shot'),
  ('Black Russian', 'Vodka and coffee liqueur shot', 'Shot'),
  ('Alabama Slammer', 'Southern comfort, amaretto, and orange juice shot', 'Shot'),
  ('Buttery Nipple', 'Butterscotch schnapps and Irish cream shot', 'Shot'),
  ('Jägerbomb', 'Jägermeister and energy drink shot', 'Shot'),
  ('Kryptonite', 'Midori, coconut rum, and pineapple juice shot', 'Shot'),
  ('Pickleback', 'Whiskey shot followed by a shot of pickle brine', 'Shot'),
  ('Toasted Almond', 'Amaretto and Kahlúa cocktail with cream', 'Short Drink');

-- Create drink_ingredient table
CREATE TABLE IF NOT EXISTS drink_ingredient (
    id SERIAL PRIMARY KEY,
    drink_id BIGINT,
    ingredient_id BIGINT,
    quantity DOUBLE,
    FOREIGN KEY (drink_id) REFERENCES drink(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredient(id)
);

-- Insert into drink_ingredient table with quantity
-- Margarita
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(1, 4, 3.0),  -- Tequila
(1, 25, 2.0), -- Triple Sec
(1, 28, 2.0);  -- Lime Juice

-- Martini
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(2, 3, 5.0),  -- Gin
(2, 7, 0.5),  -- Vermouth
(2, 46, 1.0); -- Olive

-- Mojito
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(3, 2, 5.0),  -- Rum
(3, 32, 8.0), -- Mint Leaves
(3, 28, 3.0),  -- Lime Juice
(3, 26, 2.0);  -- Simple Syrup

-- Old Fashioned
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(4, 5, 5.0),  -- Whiskey
(4, 33, 1.0),  -- Sugar Cube
(4, 43, 1.0), -- Orange Twist
(4, 44, 1.0); -- Cherry

-- Cosmopolitan
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(5, 1, 5.0),  -- Vodka
(5, 38, 2.0), -- Cranberry Juice
(5, 28, 3.0),  -- Lime Juice
(5, 43, 0.5); -- Orange Twist

-- Negroni
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(6, 3, 3.0),  -- Gin
(6, 7, 2.0),  -- Vermouth
(6, 11, 2.0); -- Campari

-- Piña Colada
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(7, 2, 4.0),  -- Rum
(7, 23, 2.0), -- Coconut Cream
(7, 14, 2.0); -- Pineapple Juice

-- Whiskey Sour
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(8, 5, 6.0),  -- Whiskey
(8, 27, 2.0),  -- Lemon Juice
(8, 26, 2.0);  -- Simple Syrup

-- Bloody Mary
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(9, 1, 4.0),  -- Vodka
(9, 40, 8.0), -- Tomato Juice
(9, 47, 1.0); -- Celery Stick

-- Mai Tai
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES
(10, 2, 3.0), -- Rum
(10, 28, 1.5), -- Lime Juice
(10, 48, 1.0);-- Orgeat Syrup

-- Gin and Tonic
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (11, 3, 4.0),    -- Gin
  (11, 34, 5.0),   -- Club Soda
  (11, 41, 0.5);   -- Lime Wedge

-- Rum and Coke
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (12, 2, 4.0),    -- Rum
  (12, 31, 5.0);   -- Coca-Cola

-- Whiskey Highball
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (13, 5, 4.0),    -- Whiskey
  (13, 34, 5.0),   -- Club Soda
  (13, 42, 0.5);   -- Lemon Wedge

-- Screwdriver
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (14, 1, 4.0),    -- Vodka
  (14, 40, 5.0);   -- Orange Juice

-- Mint Julep
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (15, 5, 4.0),    -- Whiskey
  (15, 32, 1.0),   -- Mint Leaves
  (15, 33, 0.5);   -- Sugar Cube

-- Dark and Stormy
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (16, 2, 4.0),    -- Rum
  (16, 35, 5.0),   -- Ginger Beer
  (16, 41, 0.5);   -- Lime Wedge

-- White Russian
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (17, 1, 4.0),    -- Vodka
  (17, 14, 2.0),   -- Kahlúa
  (17, 15, 2.0);   -- Cream

-- Blackberry Bramble
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (18, 3, 3.0),    -- Gin
  (18, 17, 2.0),   -- Chambord
  (18, 42, 0.5);   -- Lemon Wedge

-- Paloma
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (19, 4, 3.0),    -- Tequila
  (19, 39, 5.0),   -- Grapefruit Soda
  (19, 41, 0.5);   -- Lime Wedge

-- Espresso Martini
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (20, 1, 4.0),    -- Vodka
  (20, 14, 2.0),   -- Kahlúa
  (20, 27, 2.0);   -- Espresso

-- Kamikaze
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (21, 1, 2.0),    -- Vodka
  (21, 12, 2.0),   -- Triple Sec
  (21, 28, 1.0);   -- Lime Juice

-- B52
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (22, 14, 2.0),   -- Kahlúa
  (22, 13, 2.0),   -- Baileys
  (22, 15, 1.0);   -- Grand Marnier

-- Lemon Drop
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (23, 1, 2.0),    -- Vodka
  (23, 12, 2.0),   -- Triple Sec
  (23, 27, 1.0),   -- Lemon Juice
  (23, 33, 0.5);   -- Sugar Rim

-- Black Russian
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (24, 1, 3.0),    -- Vodka
  (24, 14, 2.0);   -- Kahlúa

-- Alabama Slammer
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (25, 6, 2.0),    -- Brandy
  (25, 16, 2.0),   -- Amaretto
  (25, 36, 3.0);   -- Orange Juice

-- Buttery Nipple
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (26, 14, 2.0),   -- Kahlúa
  (26, 13, 2.0);   -- Baileys

-- Jägerbomb
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (27, 10, 1.0),   -- Sambuca
  (27, 37, 1.0);   -- Red Bull

-- Kryptonite
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (28, 19, 2.0),   -- Midori
  (28, 2, 2.0),    -- Rum
  (28, 37, 2.0);   -- Pineapple Juice

-- Pickleback
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (29, 5, 2.0),    -- Whiskey
  (29, 31, 2.0);   -- Pickle Brine

-- Toasted almond
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES
  (30, 14, 2.0),   -- Kahlúa
  (30, 13, 2.0),   -- Amaretto
  (30, 15, 2.0);   -- Cream


-- Create Member table
CREATE TABLE IF NOT EXISTS member (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255)
);

-- Insert data into Member table
INSERT INTO member (username) VALUES
('nils');


-- Create Stock table
CREATE TABLE IF NOT EXISTS stock (
    id SERIAL PRIMARY KEY,
    member_id INT NOT NULL,
    FOREIGN KEY (member_id) REFERENCES member(id)
);

-- Create StockIngredient table
CREATE TABLE IF NOT EXISTS stock_ingredient (
    id SERIAL PRIMARY KEY,
    stock_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    quantity DOUBLE PRECISION NOT NULL,
    FOREIGN KEY (stock_id) REFERENCES stock(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredient(id)
);

-- Create user stock for user "nils"
INSERT INTO stock (member_id)
VALUES (1);

-- Insert ingredients for user "nils" in stock
INSERT INTO stock_ingredient (stock_id, ingredient_id, quantity)
VALUES
  -- Alcoholic ingredients
  (1, 1, 5.0),    -- Vodka
  (1, 2, 3.0),    -- Rum
  (1, 3, 2.0),    -- Gin
  (1, 4, 4.0),    -- Tequila
  (1, 5, 3.0),    -- Whiskey
  (1, 6, 2.0),    -- Brandy
  (1, 7, 1.0),    -- Vermouth
  (1, 8, 2.0),    -- Cognac
  (1, 9, 1.0),    -- Absinthe
  (1, 10, 2.0),   -- Sambuca

  -- Non-alcoholic ingredients
  (1, 26, 3.0),   -- Simple Syrup
  (1, 27, 4.0),   -- Lemon Juice
  (1, 28, 5.0),   -- Lime Juice
  (1, 29, 3.0),   -- Egg White
  (1, 30, 2.0),   -- Orange Bitters
  (1, 31, 2.0),   -- Grenadine
  (1, 32, 4.0),   -- Mint Leaves
  (1, 33, 1.0),   -- Sugar Cube
  (1, 34, 5.0),   -- Club Soda
  (1, 35, 3.0);   -- Ginger Beer