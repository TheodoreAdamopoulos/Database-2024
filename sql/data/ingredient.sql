-- Insert data into Ingredient table
INSERT INTO Ingredient
  (id, name, food_category_id, image_url, image_description, caloriesPer100)
VALUES
  (1, 'Salt', 1, '/ingredients/salt.jpg', 'Salt granules', 0),
  (2, 'Pepper', 1, '/ingredients/pepper.jpg', 'Black peppercorns', 0),
  (3, 'Sugar', 1, '/ingredients/sugar.jpg', 'White sugar crystals', 387),
  (4, 'Flour', 2, '/ingredients/flour.jpg', 'White flour powder', 364),
  (5, 'Butter', 3, '/ingredients/butter.jpg', 'Block of butter', 717),
  (6, 'Olive Oil', 3, '/ingredients/olive_oil.jpg', 'Extra virgin olive oil in a bottle', 884),
  (7, 'Eggs', 4, '/ingredients/eggs.jpg', 'Brown eggs in a carton', 143),
  (8, 'Milk', 4, '/ingredients/milk.jpg', 'Milk pouring from a jug', 42),
  (9, 'Garlic', 5, '/ingredients/garlic.jpg', 'Garlic bulbs with cloves', 149),
  (10, 'Onion', 5, '/ingredients/onion.jpg', 'Whole onion with peel', 40),
  (11, 'Tomato', 6, '/ingredients/tomato.jpg', 'Ripe red tomato', 18),
  (12, 'Potato', 6, '/ingredients/potato.jpg', 'Raw potato', 77),
  (13, 'Cheese', 7, '/ingredients/cheese.jpg', 'Assorted cheese slices', 402),
  (14, 'Chicken Breast', 8, '/ingredients/chicken_breast.jpg', 'Raw chicken breast fillet', 165),
  (15, 'Beef', 8, '/ingredients/beef.jpg', 'Raw beef steak', 250),
  (16, 'Pasta', 9, '/ingredients/pasta.jpg', 'Uncooked pasta noodles', 131),
  (17, 'Rice', 9, '/ingredients/rice.jpg', 'Raw rice grains', 130),
  (18, 'Lemon', 10, '/ingredients/lemon.jpg', 'Fresh yellow lemon', 29),
  (19, 'Ginger', 10, '/ingredients/ginger.jpg', 'Whole ginger root', 80),
  (20, 'Basil', 11, '/ingredients/basil.jpg', 'Fresh basil leaves', 23),
  (21, 'Cinnamon', 11, '/ingredients/cinnamon.jpg', 'Cinnamon sticks', 247),
  (22, 'Vanilla', 11, '/ingredients/vanilla.jpg', 'Vanilla beans', 288),
  (23, 'Honey', 11, '/ingredients/honey.jpg', 'Honey dripping from spoon', 304),
  (24, 'Nutmeg', 11, '/ingredients/nutmeg.jpg', 'Whole nutmeg seed', 525),
  (25, 'Thyme', 11, '/ingredients/thyme.jpg', 'Sprig of fresh thyme', 101),
  (26, 'Rosemary', 11, '/ingredients/rosemary.jpg', 'Sprig of fresh rosemary', 131),
  (27, 'Oregano', 11, '/ingredients/oregano.jpg', 'Fresh oregano leaves', 265),
  (28, 'Paprika', 11, '/ingredients/paprika.jpg', 'Ground paprika powder', 282),
  (29, 'Chili Powder', 11, '/ingredients/chili_powder.jpg', 'Red chili powder', 282),
  (30, 'Soy Sauce', 12, '/ingredients/soy_sauce.jpg', 'Dark soy sauce in a bottle', 53),
  (31, 'Mustard', 12, '/ingredients/mustard.jpg', 'Yellow mustard in a jar', 66),
  (32, 'Mayonnaise', 12, '/ingredients/mayonnaise.jpg', 'Creamy mayonnaise in a jar', 680),
  (33, 'Ketchup', 12, '/ingredients/ketchup.jpg', 'Tomato ketchup in a bottle', 101),
  (34, 'Worcestershire Sauce', 12, '/ingredients/worcestershire_sauce.jpg', 'Worcestershire sauce in a bottle', 78),
  (35, 'Vinegar', 12, '/ingredients/vinegar.jpg', 'White vinegar in a bottle', 18),
  (36, 'Mushrooms', 1, '/ingredients/mushrooms.jpg', 'Assorted fresh mushrooms', 22),
  (37, 'Bell Pepper', 1, '/ingredients/bell_pepper.jpg', 'Red bell pepper', 31),
  (38, 'Carrot', 2, '/ingredients/carrot.jpg', 'Whole carrot with greens', 41),
  (39, 'Celery', 2, '/ingredients/celery.jpg', 'Fresh celery stalks', 16),
  (40, 'Spinach', 2, '/ingredients/spinach.jpg', 'Fresh spinach leaves', 23),
  (41, 'Lettuce', 3, '/ingredients/lettuce.jpg', 'Green lettuce leaves', 15),
  (42, 'Broccoli', 3, '/ingredients/broccoli.jpg', 'Fresh broccoli florets', 34),
  (43, 'Cauliflower', 3, '/ingredients/cauliflower.jpg', 'Fresh cauliflower head', 25),
  (44, 'Cucumber', 4, '/ingredients/cucumber.jpg', 'Whole cucumber', 16),
  (45, 'Zucchini', 4, '/ingredients/zucchini.jpg', 'Whole zucchini', 17),
  (46, 'Avocado', 4, '/ingredients/avocado.jpg', 'Ripe avocado', 160),
  (47, 'Pineapple', 5, '/ingredients/pineapple.jpg', 'Whole pineapple', 50),
  (48, 'Apple', 5, '/ingredients/apple.jpg', 'Red apple', 52),
  (49, 'Banana', 5, '/ingredients/banana.jpg', 'Yellow banana', 89),
  (50, 'Strawberry', 6, '/ingredients/strawberry.jpg', 'Fresh strawberries', 32),
  (51, 'Blueberry', 6, '/ingredients/blueberry.jpg', 'Fresh blueberries', 57),
  (52, 'Raspberry', 6, '/ingredients/raspberry.jpg', 'Fresh raspberries', 52),
  (53, 'Blackberry', 6, '/ingredients/blackberry.jpg', 'Fresh blackberries', 43),
  (54, 'Watermelon', 7, '/ingredients/watermelon.jpg', 'Sliced watermelon', 30),
  (55, 'Grapes', 7, '/ingredients/grapes.jpg', 'Bunch of grapes', 69),
  (56, 'Orange', 7, '/ingredients/orange.jpg', 'Whole orange', 47),
  (57, 'Lime', 7, '/ingredients/lime.jpg', 'Whole lime', 30),
  (58, 'Cherry', 7, '/ingredients/cherry.jpg', 'Fresh cherries', 50),
  (59, 'Peach', 8, '/ingredients/peach.jpg', 'Ripe peach', 39),
  (60, 'Plum', 8, '/ingredients/plum.jpg', 'Fresh plum', 46),
  (61, 'Apricot', 8, '/ingredients/apricot.jpg', 'Whole apricot', 48),
  (62, 'Pear', 8, '/ingredients/pear.jpg', 'Juicy pear', 57),
  (63, 'Melon', 8, '/ingredients/melon.jpg', 'Sliced melon', 36),
  (64, 'Kiwi', 9, '/ingredients/kiwi.jpg', 'Whole kiwi', 61),
  (65, 'Mango', 9, '/ingredients/mango.jpg', 'Ripe mango', 60),
  (66, 'Pomegranate', 9, '/ingredients/pomegranate.jpg', 'Whole pomegranate', 83),
  (67, 'Coconut', 10, '/ingredients/coconut.jpg', 'Whole coconut', 354),
  (68, 'Hazelnut', 10, '/ingredients/hazelnut.jpg', 'Shelled hazelnuts', 628),
  (69, 'Almond', 10, '/ingredients/almond.jpg', 'Shelled almonds', 579),
  (70, 'Peanut', 10, '/ingredients/peanut.jpg', 'Shelled peanuts', 567),
  (71, 'Walnut', 10, '/ingredients/walnut.jpg', 'Shelled walnuts', 654),
  (72, 'Pistachio', 10, '/ingredients/pistachio.jpg', 'Shelled pistachios', 562),
  (73, 'Cashew', 10, '/ingredients/cashew.jpg', 'Shelled cashews', 553),
  (74, 'Macadamia', 10, '/ingredients/macadamia.jpg', 'Shelled macadamia nuts', 718),
  (75, 'Pecan', 10, '/ingredients/pecan.jpg', 'Shelled pecans', 691),
  (76, 'Brazil Nut', 10, '/ingredients/brazil_nut.jpg', 'Shelled Brazil nuts', 656),
  (77, 'Chestnut', 10, '/ingredients/chestnut.jpg', 'Whole chestnut', 131),
  (78, 'Pumpkin Seeds', 11, '/ingredients/pumpkin_seeds.jpg', 'Roasted pumpkin seeds', 574),
  (79, 'Sunflower Seeds', 11, '/ingredients/sunflower_seeds.jpg', 'Roasted sunflower seeds', 584),
  (80, 'Chia Seeds', 11, '/ingredients/chia_seeds.jpg', 'Chia seeds', 486),
  (81, 'Flaxseeds', 11, '/ingredients/flaxseeds.jpg', 'Flaxseeds', 534),
  (82, 'Poppy Seeds', 11, '/ingredients/poppy_seeds.jpg', 'Poppy seeds', 525),
  (83, 'Sesame Seeds', 11, '/ingredients/sesame_seeds.jpg', 'Sesame seeds', 573),
  (84, 'Quinoa', 12, '/ingredients/quinoa.jpg', 'Quinoa grains', 120),
  (85, 'Buckwheat', 12, '/ingredients/buckwheat.jpg', 'Buckwheat groats', 343),
  (86, 'Barley', 12, '/ingredients/barley.jpg', 'Pearl barley grains', 354),
  (87, 'Oats', 12, '/ingredients/oats.jpg', 'Rolled oats', 389),
  (88, 'Corn', 12, '/ingredients/corn.jpg', 'Fresh corn kernels', 86),
  (89, 'Couscous', 12, '/ingredients/couscous.jpg', 'Couscous grains', 112),
  (90, 'Bread', 1, '/ingredients/bread.jpg', 'Sliced loaf of bread', 265),
  (91, 'Baguette', 1, '/ingredients/baguette.jpg', 'Freshly baked baguette', 290),
  (92, 'Croissant', 1, '/ingredients/croissant.jpg', 'Golden croissant', 406),
  (93, 'Pita Bread', 1, '/ingredients/pita_bread.jpg', 'Stack of pita bread', 275),
  (94, 'Naan', 1, '/ingredients/naan.jpg', 'Fluffy naan bread', 317),
  (95, 'Tortilla', 1, '/ingredients/tortilla.jpg', 'Stack of tortillas', 218),
  (96, 'Sourdough', 2, '/ingredients/sourdough.jpg', 'Artisanal sourdough loaf', 230),
  (97, 'Rye Bread', 2, '/ingredients/rye_bread.jpg', 'Rye bread slices', 259),
  (98, 'Whole Wheat Bread', 2, '/ingredients/whole_wheat_bread.jpg', 'Whole wheat bread slices', 247),
  (99, 'Pumpernickel Bread', 2, '/ingredients/pumpernickel_bread.jpg', 'Sliced pumpernickel bread', 250),
  (100, 'Bagel', 2, '/ingredients/bagel.jpg', 'Toasted bagel', 278),
  (101, 'English Muffin', 2, '/ingredients/english_muffin.jpg', 'Whole English muffin', 157),
  (102, 'Roll', 2, '/ingredients/roll.jpg', 'Fresh dinner roll', 250),
  (103, 'Biscuit', 2, '/ingredients/biscuit.jpg', 'Fluffy biscuit', 470),
  (104, 'Muffin', 3, '/ingredients/muffin.jpg', 'Freshly baked muffin', 265),
  (105, 'Cookie', 3, '/ingredients/cookie.jpg', 'Homemade cookie', 471),
  (106, 'Cake', 3, '/ingredients/cake.jpg', 'Decorated cake', 325),
  (107, 'Pie', 3, '/ingredients/pie.jpg', 'Fruit pie', 237),
  (108, 'Cupcake', 3, '/ingredients/cupcake.jpg', 'Frosted cupcake', 339),
  (109, 'Brownie', 3, '/ingredients/brownie.jpg', 'Chocolate brownie', 466),
  (110, 'Donut', 3, '/ingredients/donut.jpg', 'Glazed donut', 452),
  (111, 'Waffle', 4, '/ingredients/waffle.jpg', 'Golden waffle', 291),
  (112, 'Pancake', 4, '/ingredients/pancake.jpg', 'Stack of pancakes', 227),
  (113, 'Crepe', 4, '/ingredients/crepe.jpg', 'Folded crepe', 90),
  (114, 'Cereal', 5, '/ingredients/cereal.jpg', 'Bowl of cereal', 366),
  (115, 'Granola', 5, '/ingredients/granola.jpg', 'Granola clusters', 471),
  (116, 'Yogurt', 6, '/ingredients/yogurt.jpg', 'Serving of yogurt', 59),
  (117, 'Milkshake', 6, '/ingredients/milkshake.jpg', 'Creamy milkshake', 132),
  (118, 'Smoothie', 6, '/ingredients/smoothie.jpg', 'Refreshing smoothie', 57),
  (119, 'Ice Cream', 7, '/ingredients/ice_cream.jpg', 'Scoop of ice cream', 207),
  (120, 'Sorbet', 7, '/ingredients/sorbet.jpg', 'Scoop of sorbet', 100),
  (121, 'Gelato', 7, '/ingredients/gelato.jpg', 'Scoop of gelato', 144),
  (122, 'Sherbet', 7, '/ingredients/sherbet.jpg', 'Scoop of sherbet', 144);