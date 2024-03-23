CREATE TABLE IF NOT EXISTS ingredient (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    category VARCHAR(255),
    abv DOUBLE
);

-- Create drink table
CREATE TABLE IF NOT EXISTS drink (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    type VARCHAR(255)
);

-- Create drink_ingredient table
CREATE TABLE IF NOT EXISTS drink_ingredient (
    id SERIAL PRIMARY KEY,
    drink_id BIGINT,
    ingredient_id BIGINT,
    quantity DOUBLE,
    FOREIGN KEY (drink_id) REFERENCES drink(id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredient(id)
);

CREATE TABLE IF NOT EXISTS member (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255)
);

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


INSERT INTO ingredient (name, category, abv) VALUES
('Raspberry Liqueur', 'Spirit', 22.0),
('Peach Schnapps', 'Spirit', 24.0),
('Irish Whiskey', 'Spirit', 40.0),
('Cherry Brandy', 'Spirit', 28.0),
('White Rum', 'Spirit', 37.5),
('Bourbon', 'Spirit', 45.0),
('Amaretto', 'Spirit', 28.0),
('Blue Curaçao', 'Spirit', 20.0),
('Coconut Rum', 'Spirit', 21.0),
('Peppermint Schnapps', 'Spirit', 30.0),
('Jägermeister', 'Spirit', 35.0),
('Chambord', 'Spirit', 16.5),
('Southern Comfort', 'Spirit', 35.0),
('Chartreuse', 'Spirit', 55.0),
('Galliano', 'Spirit', 30.0),
('Frangelico', 'Spirit', 20.0),
('Pisco', 'Spirit', 40.0),
('Mezcal', 'Spirit', 45.0),
('Aperol', 'Spirit', 11.0),
('Cointreau', 'Spirit', 40.0),
('Pimms', 'Spirit', 25.0),
('Cachaça', 'Spirit', 38.0),
('Sloe Gin', 'Spirit', 26.0),
('Apricot Brandy', 'Spirit', 24.0),
('Grappa', 'Spirit', 40.0),
('Armagnac', 'Spirit', 40.0),
('Peach Vodka', 'Spirit', 35.0),
('Butterscotch Schnapps', 'Spirit', 15.0),
('Creme de Menthe', 'Spirit', 24.0),
('Ouzo', 'Spirit', 40.0),
('Goldschlager', 'Spirit', 43.5),
('Melon Liqueur', 'Spirit', 20.0),
('Sloe Gin', 'Spirit', 26.0),
('Cassis', 'Spirit', 15.0),
('Limoncello', 'Spirit', 30.0),
('Sloe Gin', 'Spirit', 26.0),
('Cassis', 'Spirit', 15.0),
('Limoncello', 'Spirit', 30.0),
('Aquavit', 'Spirit', 40.0),
('Midori', 'Spirit', 20.0),
('Sake', 'Spirit', 15.0),
('Pernod', 'Spirit', 40.0),
('Tuaca', 'Spirit', 35.0),
('Licor 43', 'Spirit', 31.0),
('Curaçao', 'Spirit', 30.0),
('Schnapps', 'Spirit', 20.0),
('Ojen', 'Spirit', 40.0);

INSERT INTO ingredient (name, category, abv) VALUES
('Baileys Irish Cream', 'Liqueur', 17.0),
('Kahlúa', 'Liqueur', 20.0),
('Grand Marnier', 'Liqueur', 40.0),
('Raspberry Liqueur', 'Liqueur', 22.0),
('Peach Schnapps', 'Liqueur', 24.0),
('Cherry Liqueur', 'Liqueur', 28.0),
('Coconut Liqueur', 'Liqueur', 21.0),
('Peppermint Schnapps', 'Liqueur', 30.0),
('Coffee Liqueur', 'Liqueur', 20.0),
('Hazelnut Liqueur', 'Liqueur', 20.0),
('Orange Liqueur', 'Liqueur', 25.0),
('Almond Liqueur', 'Liqueur', 20.0),
('Blueberry Liqueur', 'Liqueur', 18.0),
('Vanilla Liqueur', 'Liqueur', 25.0),
('Ginger Liqueur', 'Liqueur', 30.0),
('Pomegranate Liqueur', 'Liqueur', 20.0),
('Butterscotch Liqueur', 'Liqueur', 15.0),
('Chocolate Liqueur', 'Liqueur', 20.0),
('Mango Liqueur', 'Liqueur', 18.0),
('Apple Liqueur', 'Liqueur', 22.0);

INSERT INTO ingredient (name, category, abv) VALUES
('Simple Syrup', 'Non-Liquor', 0.0),
('Egg White', 'Non-Liquor', 0.0),
('Orange Bitters', 'Non-Liquor', 0.0),
('Grenadine', 'Non-Liquor', 0.0),
('Mint Leaves', 'Non-Liquor', 0.0),
('Sugar Cube', 'Non-Liquor', 0.0),
('Club Soda', 'Non-Liquor', 0.0),
('Ginger Beer', 'Non-Liquor', 0.0),
('Agave Syrup', 'Non-Liquor', 0.0),
('Honey', 'Non-Liquor', 0.0),
('Cherry Syrup', 'Non-Liquor', 0.0),
('Cinnamon Syrup', 'Non-Liquor', 0.0),
('Vanilla Syrup', 'Non-Liquor', 0.0),
('Rosemary Syrup', 'Non-Liquor', 0.0),
('Tonic Water', 'Non-Liquor', 0.0);

INSERT INTO ingredient (name, category, abv) VALUES
('Lemon Juice', 'Juice', 0.0),
('Lime Juice', 'Juice', 0.0),
('Cranberry Juice', 'Juice', 0.0),
('Pineapple Juice', 'Juice', 0.0),
('Apple Juice', 'Juice', 0.0),
('Grapefruit Juice', 'Juice', 0.0),
('Tomato Juice', 'Juice', 0.0),
('Cucumber Juice', 'Juice', 0.0),
('Mango Puree', 'Juice', 0.0),
('Passion Fruit Puree', 'Juice', 0.0),
('Blackberry Puree', 'Juice', 0.0),
('Raspberry Puree', 'Juice', 0.0),
('Peach Puree', 'Juice', 0.0);

INSERT INTO ingredient (name, category, abv) VALUES
('Lemon Twist', 'Garnish', 0.0),
('Orange Twist', 'Garnish', 0.0),
('Cherry', 'Garnish', 0.0),
('Olive', 'Garnish', 0.0),
('Pineapple Wedge', 'Garnish', 0.0),
('Mint Sprig', 'Garnish', 0.0),
('Cucumber Slice', 'Garnish', 0.0),
('Lime Wheel', 'Garnish', 0.0),
('Grapefruit Twist', 'Garnish', 0.0),
('Basil Leaf', 'Garnish', 0.0),
('Rosemary Sprig', 'Garnish', 0.0),
('Strawberry', 'Garnish', 0.0),
('Kiwi Slice', 'Garnish', 0.0),
('Peach Slice', 'Garnish', 0.0),
('Raspberry', 'Garnish', 0.0),
('Blueberry', 'Garnish', 0.0),
('Blackberry', 'Garnish', 0.0),
('Pomegranate Seeds', 'Garnish', 0.0),
('Candied Ginger', 'Garnish', 0.0),
('Edible Flower', 'Garnish', 0.0);

INSERT INTO drink (name, description, type) VALUES
('Gin and Tonic', 'Classic combination of gin, tonic water, and lime served over ice.', 'Long Drink'),
('Tom Collins', 'Made with gin, lemon juice, simple syrup, and soda water, served over ice with a lemon slice.', 'Long Drink'),
('Mojito', 'Refreshing cocktail with white rum, sugar, lime juice, soda water, and mint leaves over ice.', 'Long Drink'),
('Dark and Stormy', 'Combination of dark rum, ginger beer, and lime juice served over ice.', 'Long Drink'),
('Paloma', 'Tequila-based cocktail with grapefruit soda, lime juice, and a pinch of salt, served over ice.', 'Long Drink'),
('Long Island Iced Tea', 'Mix of vodka, tequila, rum, gin, triple sec, simple syrup, lemon juice, and cola served over ice.', 'Long Drink'),
('Mai Tai', 'Tropical cocktail with light and dark rum, lime juice, orange liqueur, and orgeat syrup over crushed ice.', 'Long Drink'),
('Singapore Sling', 'Classic cocktail with gin, cherry brandy, Benedictine, pineapple juice, grenadine, and bitters over ice.', 'Long Drink'),
('Tequila Sunrise', 'Tequila-based drink with orange juice and grenadine, served over ice with a slice of orange.', 'Long Drink'),
('White Russian', 'Combination of vodka, coffee liqueur, and cream served over ice.', 'Long Drink'),
('Whiskey Sour', 'Whiskey mixed with lemon juice and simple syrup, served over ice with a cherry on top.', 'Long Drink'),
('Caipirinha', 'Brazilian cocktail made with cachaca, sugar, and lime, served over ice.', 'Long Drink'),
('Pimms Cup', 'Classic English summer drink with Pimms No. 1, lemonade, and various fruits and herbs, served over ice.', 'Long Drink'),
('Rum Punch', 'Caribbean-inspired punch with rum, orange juice, pineapple juice, grenadine, and soda water, served over ice.', 'Long Drink'),
('Vodka Cranberry', 'Simple mix of vodka and cranberry juice served over ice.', 'Long Drink'),
('Blue Lagoon', 'Vodka mixed with blue curacao and lemonade, served over ice.', 'Long Drink'),
('Amaretto Sour', 'Amaretto liqueur mixed with lemon juice and simple syrup, served over ice.', 'Long Drink'),
('Sloe Gin Fizz', 'Fizz cocktail made with sloe gin, lemon juice, and simple syrup, served over ice.', 'Long Drink'),
('Raspberry Collins', 'Refreshing drink with gin, raspberry syrup, lemon juice, and soda water, served over ice.', 'Long Drink'),
('Cuba Libre', 'Classic mix of rum and cola with a splash of lime juice, served over ice.', 'Long Drink'),
('Black Russian', 'Combination of vodka and coffee liqueur served over ice.', 'Long Drink'),
('Raspberry Mojito', 'Mojito variation with raspberries added to the traditional ingredients, served over ice.', 'Long Drink'),
('Bramble', 'Gin-based cocktail with blackberry liqueur, lemon juice, and simple syrup, served over crushed ice.', 'Long Drink'),
('Aperol Spritz', 'Aperol, prosecco, and soda water served over ice with an orange slice.', 'Long Drink'),
('Champagne Cocktail', 'Classic cocktail with champagne, sugar, and Angostura bitters, served over ice.', 'Long Drink'),
('Moscow Mule', 'Vodka mixed with ginger beer and lime juice, served over ice in a copper mug.', 'Long Drink'),
('Margarita', 'Tequila-based cocktail with triple sec and lime juice, served over ice with a salted rim.', 'Long Drink'),
('Sex on the Beach', 'Vodka, peach schnapps, cranberry juice, and orange juice served over ice.', 'Long Drink'),
('Raspberry Lemonade Vodka', 'Vodka mixed with raspberry syrup and lemonade, served over ice.', 'Long Drink');

INSERT INTO drink (name, description, type) VALUES
('Manhattan', 'Classic cocktail made with rye whiskey, sweet vermouth, and Angostura bitters, stirred and strained.', 'Short Drink'),
('Old Fashioned', 'Timeless drink with bourbon or rye whiskey, sugar cube, Angostura bitters, and an orange twist.', 'Short Drink'),
('Dry Martini', 'Elegant cocktail with gin and dry vermouth, stirred and garnished with an olive or lemon twist.', 'Short Drink'),
('Negroni', 'Bitter and herbal cocktail with equal parts gin, sweet vermouth, and Campari, stirred and served over ice.', 'Short Drink'),
('Sazerac', 'Classic New Orleans cocktail with rye whiskey, absinthe, sugar, and Peychauds bitters, served neat in a chilled glass.', 'Short Drink'),
('Whiskey Sour', 'Whiskey mixed with lemon juice and simple syrup, shaken and strained into a glass.', 'Short Drink'),
('Daiquiri', 'Refreshing cocktail with white rum, lime juice, and simple syrup, shaken and strained.', 'Short Drink'),
('Margarita', 'Tequila-based cocktail with triple sec and lime juice, served over ice with a salted rim.', 'Long Drink'),
('Gimlet', 'Crisp cocktail with gin and lime cordial, shaken and served in a chilled glass.', 'Short Drink'),
('Rob Roy', 'Scotch-based cocktail with sweet vermouth and Angostura bitters, stirred and strained.', 'Short Drink'),
('Boulevardier', 'Whiskey variation of the Negroni, made with bourbon, sweet vermouth, and Campari, stirred and served over ice.', 'Short Drink'),
('Corpse Reviver #2', 'Classic cocktail with gin, Cointreau, Lillet Blanc, and a touch of absinthe, shaken and strained.', 'Short Drink'),
('Vesper', 'James Bonds martini with gin, vodka, and Lillet Blanc, shaken and served in a chilled glass.', 'Short Drink'),
('Blood and Sand', 'Scotch-based cocktail with sweet vermouth, orange juice, and cherry brandy, shaken and strained.', 'Short Drink'),
('Bees Knees', 'Refreshing cocktail with gin, honey syrup, and lemon juice, shaken and strained.', 'Short Drink'),
('Sidecar', 'Cognac-based cocktail with Cointreau and lemon juice, shaken and served in a sugar-rimmed glass.', 'Short Drink'),
('Last Word', 'Equal parts gin, green chartreuse, maraschino liqueur, and lime juice, shaken and strained.', 'Short Drink'),
('Martinez', 'Classic precursor to the martini with Old Tom gin, sweet vermouth, and maraschino liqueur, stirred and strained.', 'Short Drink'),
('Rusty Nail', 'Scotch-based cocktail with Drambuie, served over ice in a rocks glass.', 'Short Drink'),
('Whiskey Smash', 'Bourbon-based cocktail with mint, simple syrup, and lemon juice, muddled and served over ice.', 'Short Drink'),
('Hemingway Daiquiri', 'Daiquiri variation with white rum, maraschino liqueur, grapefruit juice, and lime juice, shaken and strained.', 'Short Drink'),
('Adonis', 'A sherry-based cocktail with sweet vermouth, orange bitters, and an orange twist, stirred and strained.', 'Short Drink'),
('Black Velvet', 'Equal parts stout beer and champagne, poured gently to maintain the layers.', 'Short Drink'),
('El Presidente', 'Rum-based cocktail with vermouth, orange curaçao, and grenadine, stirred and strained.', 'Short Drink'),
('Bobby Burns', 'Scotch-based cocktail with sweet vermouth and Benedictine, stirred and strained.', 'Short Drink'),
('Blinker', 'Rye whiskey-based cocktail with grapefruit juice and raspberry syrup, shaken and strained.', 'Short Drink'),
('Greenpoint', 'Rye whiskey-based cocktail with sweet vermouth, yellow chartreuse, and bitters, stirred and strained.', 'Short Drink'),
('Monkey Gland', 'Gin-based cocktail with orange juice, grenadine, and a touch of absinthe, shaken and strained.', 'Short Drink'),
('Toronto', 'Rye whiskey-based cocktail with Fernet Branca, simple syrup, and bitters, stirred and strained.', 'Short Drink');


INSERT INTO drink (name, description, type) VALUES
('B52', 'Layered shot with Kahlúa, Baileys Irish Cream, and Grand Marnier.', 'Shot'),
('Kamikaze', 'Vodka, triple sec, and lime juice served as a shot.', 'Shot'),
('Tequila Shot', 'Straight shot of tequila, often served with salt and a lime wedge.', 'Shot'),
('Jägerbomb', 'Shot of Jägermeister dropped into a glass of energy drink.', 'Shot'),
('Fireball Whisky Shot', 'Cinnamon-flavored whisky served as a shot.', 'Shot'),
('Buttery Nipple', 'Layered shot with butterscotch schnapps and Irish cream.', 'Shot'),
('Sambuca Shot', 'Anise-flavored liqueur served as a straight shot.', 'Shot'),
('Blowjob Shot', 'Layered shot with Kahlúa, Baileys Irish Cream, and whipped cream.', 'Shot'),
('Red Headed Slut', 'Shot made with peach schnapps, Jägermeister, and cranberry juice.', 'Shot'),
('Cactus Jack', 'Tequila, Midori, and sour mix served as a shot.', 'Shot'),
('Snake Bite', 'Equal parts lager and cider served as a shot.', 'Shot'),
('Washington Apple Shot', 'Crown Royal, sour apple schnapps, and cranberry juice served as a shot.', 'Shot'),
('Pickleback', 'Shot of whiskey followed by a shot of pickle brine.', 'Shot'),
('Three Wise Men', 'Equal parts Jack Daniels, Jim Beam, and Johnnie Walker served as a shot.', 'Shot'),
('Brain Hemorrhage', 'Layered shot with peach schnapps, Baileys Irish Cream, and grenadine.', 'Shot'),
('Flatliner', 'Layered shot with tequila, sambuca, and hot sauce.', 'Shot'),
('Kiss of the Flame', 'Sambuca and cinnamon schnapps served as a flaming shot.', 'Shot'),
('Cement Mixer', 'Layered shot with Baileys Irish Cream and lime juice, curdles when mixed.', 'Shot'),
('Surfer on Acid', 'Jägermeister, coconut rum, and pineapple juice served as a shot.', 'Shot'),
('Melon Ball', 'Midori, vodka, and pineapple juice served as a shot.', 'Shot'),
('Royal Flush', 'Crown Royal, peach schnapps, and cranberry juice served as a shot.', 'Shot'),
('Baby Guinness', 'Layered shot with coffee liqueur and Irish cream, resembling a miniature pint of Guinness.', 'Shot'),
('Green Tea Shot', 'Jameson Irish Whiskey, peach schnapps, and sour mix served as a shot.', 'Shot'),
('Duck Fart', 'Layered shot with Kahlúa, Baileys Irish Cream, and Crown Royal.', 'Shot'),
('Liquid Cocaine', 'Jägermeister, Goldschläger, Rumple Minze, and Bacardi 151 served as a shot.', 'Shot'),
('Prairie Fire', 'Tequila and Tabasco sauce served as a spicy shot.', 'Shot'),
('Mini Beer', 'Layered shot with Licor 43 and heavy cream, resembling a small beer.', 'Shot'),
('Alabama Slammer', 'Southern Comfort, amaretto, sloe gin, and orange juice served as a shot.', 'Shot'),
('Black Tooth Grin', 'Whiskey, Coca-Cola, and a splash of amaretto served as a shot.', 'Shot');


-- Gin and Tonic
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (1, 1, 5), -- Gin (150 cl)
       (1, 82, 10); -- Club Soda (200 cl)

-- Tom Collins
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (2, 3, 5),  -- Gin (150 cl)
       (2, 83, 3),   -- Lemon Juice (5 cl)
       (2, 68, 2), -- Simple Syrup (100 cl)
       (2, 74, 10); -- Club Soda (100 cl)

-- Mojito
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (3, 5, 5),  -- White Rum (150 cl)
       (3, 73, 1),   -- Mint Leaves (5 cl)
       (3, 83, 3), -- Lemon Juice (5 cl)
       (3, 68, 2), -- Simple Syrup (100 cl)
       (3, 74, 100); -- Club Soda (100 cl)

-- Dark and Stormy
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (4, 18, 5), -- Dark Rum (150 cl)
       (4, 75, 15), -- Ginger Beer (200 cl)
       (4, 83, 5);   -- Lime Juice (5 cl)

-- Paloma
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (5, 17, 5), -- Tequila (150 cl)
       (5, 86, 20), -- Grapefruit Juice (200 cl)
       (5, 84, 3);   -- Lime Juice (5 cl)

-- Long Island Iced Tea
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (6, 5, 1),   -- Vodka (15 cl)
       (6, 17, 1),  -- Tequila (15 cl)
       (6, 18, 1),  -- Rum (15 cl)
       (6, 6, 1),   -- Gin (15 cl)
       (6, 20, 1),  -- Triple Sec (15 cl)
       (6, 68, 3),  -- Simple Syrup (30 cl)
       (6, 83, 2),  -- Lemon Juice (15 cl)
       (6, 74, 15); -- Cola (150 cl)

-- Mai Tai
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (7, 5, 2),   -- Light Rum (30 cl)
       (7, 4, 2),   -- Dark Rum (30 cl)
       (7, 83, 3),  -- Lime Juice (15 cl)
       (7, 50, 1),  -- Orange Liqueur (15 cl)
       (7, 62, 2);  -- Orgeat Syrup (15 cl)

-- Singapore Sling
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (8, 6, 3),   -- Gin (45 cl)
       (8, 4, 2),   -- Cherry Brandy (15 cl)
       (8, 42, 2),  -- Benedictine (15 cl)
       (8, 87, 6),  -- Pineapple Juice (60 cl)
       (8, 71, 2),  -- Grenadine (15 cl)
       (8, 68, 3),  -- Simple Syrup (30 cl)
       (8, 70, 2);   -- Orange Bitters (2 cl)

-- Tequila Sunrise
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (9, 17, 5),  -- Tequila (45 cl)
       (9, 83, 10),  -- Orange Juice (90 cl)
       (9, 71, 1);  -- Grenadine (15 cl)

-- White Russian
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (10, 5, 3),  -- Vodka (30 cl)
       (10, 56, 2), -- Coffee Liqueur (15 cl)
       (10, 55, 3); -- Cream (30 cl)

       -- Whiskey Sour
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (11, 6, 5),  -- Bourbon (45 cl)
       (11, 83, 3), -- Lemon Juice (30 cl)
       (11, 68, 2); -- Simple Syrup (30 cl)

       -- Caipirinha
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (12, 22, 5), -- Cachaça (45 cl)
       (12, 77, 1), -- Sugar (10 cl)
       (12, 83, 1);  -- Lime Juice (1 cl)

-- Pimms Cup
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (13, 21, 5),  -- Pimms No. 1 (45 cl)
       (13, 74, 12), -- Lemonade (120 cl)
       (13, 96, 1),   -- Lemon Twist (1 cl)
       (13, 97, 1),   -- Orange Twist (1 cl)
       (13, 98, 1),   -- Cherry (1 cl)
       (13, 106, 1);  -- Rosemary Sprig (1 cl)

-- Rum Punch
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (14, 18, 5),  -- Rum (60 cl)
       (14, 87, 5),  -- Pineapple Juice (60 cl)
       (14, 83, 3),  -- Orange Juice (30 cl)
       (14, 71, 1),  -- Grenadine (15 cl)
       (14, 74, 20); -- Soda Water (200 cl)

-- Vodka Cranberry
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (15, 5, 5),  -- Vodka (45 cl)
       (15, 85, 10); -- Cranberry Juice (90 cl)

-- Blue Lagoon
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (16, 5, 3),  -- Vodka (45 cl)
       (16, 8, 2),  -- Blue Curaçao (30 cl)
       (16, 74, 12); -- Lemonade (120 cl)

-- Amaretto Sour
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (17, 7, 5),  -- Amaretto (45 cl)
       (17, 83, 3), -- Lemon Juice (30 cl)
       (17, 68, 2); -- Simple Syrup (30 cl)

-- Sloe Gin Fizz
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (18, 23, 5), -- Sloe Gin (45 cl)
       (18, 83, 3), -- Lemon Juice (30 cl)
       (18, 68, 2); -- Simple Syrup (30 cl)

-- Raspberry Collins
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (19, 1, 3),  -- Gin (45 cl)
       (19, 51, 2),     -- Raspberry Liqueur (30 cl)
       (19, 83, 5), -- Lemon Juice (15 cl)
       (19, 74, 15); -- Soda Water (150 cl)

-- Cuba Libre
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (20, 18, 5), -- Rum (60 cl)
       (20, 74, 15), -- Cola (150 cl)
       (20, 84, 2);   -- Lime Juice (5 cl)

-- Black Russian
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (21, 5, 4),  -- Vodka (45 cl)
       (21, 56, 2); -- Coffee Liqueur (30 cl)

-- Raspberry Mojito
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (22, 5, 3),  -- White Rum (45 cl)
       (22, 73, 1), -- Mint Leaves (10 cl)
       (22, 94, 2), -- Raspberry Puree (30 cl)
       (22, 83, 3), -- Lime Juice (10 cl)
       (22, 74, 10); -- Club Soda (100 cl)

-- Bramble
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (23, 1, 3),  -- Gin (45 cl)
       (23, 112, 2), -- Blackberry Liqueur (30 cl)
       (23, 83, 3),  -- Lemon Juice (15 cl)
       (23, 68, 2);  -- Simple Syrup (15 cl)

-- Aperol Spritz
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (24, 19, 5),  -- Aperol (60 cl)
       (24, 31, 10),  -- Prosecco (90 cl)
       (24, 74, 10);  -- Soda Water (90 cl)

-- Champagne Cocktail
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (25, 17, 5),  -- Champagne (60 cl)
       (25, 73, 2),   -- Sugar Cube (5 cl)
       (25, 96, 1);   -- Lemon Twist (1 cl)

-- Moscow Mule
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (26, 5, 5),  -- Vodka (45 cl)
       (26, 75, 15), -- Ginger Beer (150 cl)
       (26, 84, 3);   -- Lime Juice (5 cl)



-- Sex on the Beach
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (28, 5, 3),  -- Vodka (45 cl)
       (28, 52,2), -- Peach Schnapps (15 cl)
       (28, 85, 5), -- Cranberry Juice (60 cl)
       (28, 87, 5); -- Orange Juice (60 cl)

-- Raspberry Lemonade Vodka
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (29, 5, 3),  -- Vodka (45 cl)
       (29, 51, 2), -- Raspberry Liqueur (30 cl)
       (29, 73, 6); -- Lemonade (60 cl)

-- Manhattan
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (30, 6, 2),  -- Bourbon (50 cl)
       (30, 28, 2), -- Sweet Vermouth (30 cl)
       (30, 73, 1);  -- Angostura Bitters (2 cl)

-- Old Fashioned
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (31, 6, 5),   -- Bourbon (50 cl)
       (31, 73, 1),   -- Sugar Cube (1 cl)
       (31, 103, 2),  -- Angostura Bitters (2 cl)
       (31, 96, 1);   -- Orange Twist (1 cl)

-- Dry Martini
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (32, 1, 5),   -- Gin (60 cl)
       (32, 29, 1),  -- Dry Vermouth (10 cl)
       (32, 99, 1);   -- Olive (1 cl)

-- Negroni
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (33, 1, 2),   -- Gin (30 cl)
       (33, 3, 2),   -- Sweet Vermouth (30 cl)
       (33, 42, 2);  -- Campari (30 cl)

-- Sazerac
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (34, 6, 4),   -- Rye Whiskey (50 cl)
       (34, 44, 1),   -- Absinthe (5 cl)
       (34, 73, 1),   -- Sugar (1 cl)
       (34, 103, 3);  -- Peychaud's Bitters (3 cl)

-- Whiskey Sour
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (35, 3, 5),   -- Whiskey (50 cl)
       (35, 83, 3),  -- Lemon Juice (25 cl)
       (35, 68, 2);  -- Simple Syrup (15 cl)

-- Daiquiri
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (36, 5, 3),   -- White Rum (50 cl)
       (36, 83, 3),  -- Lime Juice (25 cl)
       (36, 68, 2);  -- Simple Syrup (15 cl)

-- Margarita
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (37, 17, 3),  -- Tequila (50 cl)
       (37, 20, 2),  -- Triple Sec (20 cl)
       (37, 83, 3);  -- Lime Juice (30 cl)

-- Gimlet
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (38, 1, 5),   -- Gin (60 cl)
       (38, 80, 33),
       (2, 83, 3),   -- Lemon Juice (5 cl)
       (2, 68, 2); -- Simple Syrup (100 cl)-- Lime Cordial (30 cl)

-- Rob Roy
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (39, 26, 5),  -- Scotch (50 cl)
       (39, 29, 2),  -- Sweet Vermouth (20 cl)
       (39, 103, 3);  -- Angostura Bitters (3 cl)

-- Boulevardier
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (40, 6, 2),   -- Bourbon (40 cl)
       (40, 3, 2),   -- Sweet Vermouth (30 cl)
       (40, 42, 2);  -- Campari (30 cl)

       -- Corpse Reviver #2
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (41, 1, 3),   -- Gin (30 cl)
       (41, 20, 2),  -- Cointreau (20 cl)
       (41, 30, 2),  -- Lillet Blanc (20 cl)
       (41, 44, 2);   -- Absinthe (2 cl)

-- Vesper
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (42, 1, 3),   -- Gin (60 cl)
       (42, 5, 2),   -- Vodka (20 cl)
       (42, 30, 2);  -- Lillet Blanc (20 cl)

-- Blood and Sand
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (43, 26, 4),  -- Scotch (40 cl)
       (43, 3, 2),   -- Sweet Vermouth (20 cl)
       (43, 87, 2),  -- Orange Juice (20 cl)
       (43, 4, 2);   -- Cherry Brandy (20 cl)

-- Bees Knees
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (44, 1, 5),   -- Gin (60 cl)
       (44, 77, 3),  -- Honey Syrup (30 cl)
       (44, 83, 2);  -- Lemon Juice (30 cl)

-- Sidecar
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (45, 26, 3),  -- Cognac (50 cl)
       (45, 20, 2),  -- Cointreau (20 cl)
       (45, 83, 2);  -- Lemon Juice (20 cl)

-- Last Word
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (46, 1, 2),   -- Gin (30 cl)
       (46, 14, 2),  -- Green Chartreuse (30 cl)
       (46, 57, 2),  -- Maraschino Liqueur (30 cl)
       (46, 83, 2);  -- Lime Juice (30 cl)

-- Martinez
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (47, 2, 3),   -- Old Tom Gin (45 cl)
       (47, 3, 2),   -- Sweet Vermouth (30 cl)
       (47, 57, 1);  -- Maraschino Liqueur (10 cl)

-- Rusty Nail
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (48, 26, 4),  -- Scotch (50 cl)
       (48, 34, 2);  -- Drambuie (20 cl)

-- Whiskey Smash
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (49, 6, 5),   -- Bourbon (60 cl)
       (49, 72, 8),   -- Mint Leaves (8 cl)
       (49, 68, 3),  -- Simple Syrup (20 cl)
       (49, 83, 2);  -- Lemon Juice (20 cl)

-- Hemingway Daiquiri
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (50, 5, 3),   -- White Rum (45 cl)
       (50, 57, 2),  -- Maraschino Liqueur (15 cl)
       (50, 88, 3),  -- Grapefruit Juice (30 cl)
       (50, 83, 2);  -- Lime Juice (30 cl)

       -- Adonis
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (51, 37, 45),  -- Sherry (45 cl)
       (51, 3, 30),   -- Sweet Vermouth (30 cl)
       (51, 71, 2),   -- Orange Bitters (2 cl)
       (51, 96, 1);   -- Orange Twist (1 cl)

-- Black Velvet
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (52, 17, 45),  -- Champagne (45 cl)
       (52, 37, 45);  -- Stout Beer (45 cl)

-- El Presidente
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (53, 5, 3),   -- White Rum (45 cl)
       (53, 3, 1),   -- Sweet Vermouth (15 cl)
       (53, 8, 1),   -- Orange Curaçao (15 cl)
       (53, 71, 2);   -- Grenadine (5 cl)

-- Bobby Burns
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (54, 26, 3),  -- Scotch (45 cl)
       (54, 3, 2),   -- Sweet Vermouth (30 cl)
       (54, 7, 2);    -- Benedictine (5 cl)

-- Blinker
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (55, 8, 5),   -- Rye Whiskey (50 cl)
       (55, 88, 3),  -- Grapefruit Juice (20 cl)
       (55, 51, 2);  -- Raspberry Syrup (20 cl)

-- Greenpoint
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (56, 8, 3),   -- Rye Whiskey (50 cl)
       (56, 3, 3),   -- Sweet Vermouth (30 cl)
       (56, 16, 2),  -- Yellow Chartreuse (15 cl)
       (56, 103, 2);  -- Bitters (2 cl)

-- Monkey Gland
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (57, 1, 4),   -- Gin (45 cl)
       (57, 87, 3),  -- Orange Juice (30 cl)
       (57, 71, 1),  -- Grenadine (10 cl)
       (57, 44, 2);   -- Absinthe (2 cl)

-- Toronto
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (58, 8, 3),   -- Rye Whiskey (50 cl)
       (58, 15, 2),  -- Fernet Branca (15 cl)
       (58, 68, 2),  -- Simple Syrup (10 cl)
       (58, 103, 2);  -- Bitters (2 cl)

       -- B52 (Total: 5cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (59, 49, 2),   -- Kahlúa (2 cl)
       (59, 48, 2),   -- Baileys Irish Cream (2 cl)
       (59, 50, 1);   -- Grand Marnier (1 cl)

-- Kamikaze (Total: 6cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (60, 64, 2),  -- Vodka (2 cl)
       (60, 20, 2),  -- Triple Sec (2 cl)
       (60, 84, 2);  -- Lime Juice (2 cl)

-- Tequila Shot (Total: 5cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (61, 38, 5);  -- Tequila (5 cl)

-- Jägerbomb (Total: 6cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (62, 11, 2),   -- Jägermeister (2 cl)
       (62, 74, 4);   -- Energy Drink (4 cl)

-- Fireball Whisky Shot (Total: 5cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (63, 63, 5);  -- Fireball Whisky (5 cl)

-- Buttery Nipple (Total: 5cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (64, 28, 2),   -- Butterscotch Schnapps (2 cl)
       (64, 48, 3);   -- Baileys Irish Cream (3 cl)

-- Sambuca Shot (Total: 5cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (65, 64, 5);  -- Sambuca (5 cl)

-- Blowjob Shot (Total: 5cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (66, 49, 1),   -- Kahlúa (1 cl)
       (66, 48, 1),   -- Baileys Irish Cream (1 cl)
       (66, 21, 3);   -- Whipped Cream (3 cl)

-- Red Headed Slut (Total: 6cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (67, 52, 1),   -- Peach Schnapps (1 cl)
       (67, 11, 1),   -- Jägermeister (1 cl)
       (67, 85, 4);   -- Cranberry Juice (4 cl)

-- Cactus Jack (Total: 6cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (68, 38, 1),   -- Tequila (1 cl)
       (68, 40, 1),   -- Midori (1 cl)
       (68, 74, 4);   -- Sour Mix (4 cl)

-- Snake Bite (Total: 5cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (69, 75, 2),   -- Lager (2 cl)
       (69, 86, 3);   -- Cider (3 cl)

-- Washington Apple Shot (Total: 6cl)
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (70, 77, 1),   -- Crown Royal (1 cl)
       (70, 78, 1),   -- Sour Apple Schnapps (1 cl)
       (70, 85, 4);   -- Cranberry Juice (4 cl)

-- Pickleback
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity)
VALUES (71, 3, 4); -- Whiskey

INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (71, 78, 4); -- Pickle Brine

-- Three Wise Men
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (72, 67, 2); -- Jägermeister
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (72, 6, 2); -- Jack Daniels
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (72, 22, 2); -- Johnnie Walker

-- Brain Hemorrhage
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (73, 52, 2); -- Peach Schnapps
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (73, 49, 2); -- Baileys Irish Cream
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (73, 71, 1); -- Grenadine

-- Flatliner
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (74, 3, 2); -- Tequila
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (74, 65, 2); -- Sambuca
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (74, 78, 1); -- Hot Sauce

-- Kiss of the Flame
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (75, 65, 3); -- Sambuca
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (75, 31, 2); -- Cinnamon Schnapps

-- Cement Mixer
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (76, 48, 3); -- Baileys Irish Cream
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (76, 83, 3); -- Lime Juice

-- Surfer on Acid
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (77, 11, 2); -- Jägermeister
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (77, 9, 2); -- Coconut Rum
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (77, 86, 1); -- Pineapple Juice

-- Melon Ball
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (78, 40, 2); -- Midori
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (78, 27, 2); -- Vodka
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (78, 86, 1); -- Pineapple Juice

-- Royal Flush
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (79, 70, 2); -- Crown Royal
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (79, 52, 2); -- Peach Schnapps
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (79, 85, 1); -- Cranberry Juice

-- Baby Guinness
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (80, 49, 2); -- Baileys Irish Cream
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (80, 56, 3); -- Coffee Liqueur

-- Green Tea Shot
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (81, 3, 2); -- Jameson Irish Whiskey
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (81, 52, 2); -- Peach Schnapps
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (81, 68, 2); -- Sour Mix

-- Duck Fart
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (82, 49, 2); -- Baileys Irish Cream
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (82, 48, 2); -- Kahlúa
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (82, 70, 2); -- Crown Royal

-- Liquid Cocaine
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (83, 11, 2); -- Jägermeister
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (83, 31, 2); -- Goldschläger
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (83, 56, 2); -- Rumple Minze
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (83, 4, 1); -- Bacardi 151

-- Prairie Fire
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (84, 3, 4); -- Tequila
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (84, 79, 0.5); -- Tabasco sauce

-- Mini Beer
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (85, 44, 3); -- Licor 43
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (85, 52, 2); -- Heavy Cream

-- Alabama Slammer
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (86, 13, 2); -- Southern Comfort
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (86, 7, 2); -- Amaretto
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (86, 23, 2); -- Sloe Gin
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (86, 87, 2); -- Orange Juice

-- Black Tooth Grin
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (87, 6, 2); -- Whiskey
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (87, 47, 4); -- Coca-Cola
INSERT INTO drink_ingredient (drink_id, ingredient_id, quantity) VALUES (87, 7, 1); -- Amaretto

-- Insert data into Member table
INSERT INTO member (username) VALUES
('nils');

-- Create user stock for user "nils"
INSERT INTO stock (member_id)
VALUES (1);

-- Insert ingredients for user "nils" in stock
INSERT INTO stock_ingredient (stock_id, ingredient_id, quantity)
VALUES
  -- Alcoholic ingredients
  (1, 1, 50),    -- Vodka
  (1, 2, 30),    -- Rum
  (1, 3, 50),    -- Gin
  (1, 4, 0),    -- Tequila
  (1, 5, 30),    -- Whiskey
  (1, 6, 20),    -- Brandy
  (1, 7, 50),    -- Vermouth
  (1, 8, 20),    -- Cognac
  (1, 9, 0),    -- Absinthe
  (1, 10, 0),   -- Sambuca

  -- Non-alcoholic ingredients
  (1, 26, 100),   -- Simple Syrup
  (1, 27, 100),   -- Lemon Juice
  (1, 28, 100),   -- Lime Juice
  (1, 29, 10),   -- Egg White
  (1, 30, 0),   -- Orange Bitters
  (1, 31, 100),   -- Grenadine
  (1, 32, 0),   -- Mint Leaves
  (1, 33, 100),   -- Sugar Cube
  (1, 34, 100),   -- Club Soda
  (1, 35, 0);   -- Ginger Beer



