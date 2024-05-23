-- Insert data into Recipe table
INSERT INTO Recipe (id, name, cuisine_id, description, difficulty, ingredient_id, image_url, image_description)
VALUES
  -- Italian cuisine
  (1, 'Spaghetti Carbonara', 1, 'A classic Italian pasta dish with eggs, cheese, pancetta, and pepper.', 2, 1, '/recipes/img_1.jpg', 'A plate of spaghetti carbonara with a creamy sauce.'),
  (2, 'Margherita Pizza', 1, 'Traditional Italian pizza with tomatoes, mozzarella, and basil.', 2, 2, '/recipes/img_2.jpg', 'A freshly baked margherita pizza.'),
  (3, 'Lasagna', 1, 'Italian layered pasta dish with meat, cheese, and tomato sauce.', 3, 3, '/recipes/img_3.jpg', 'A slice of lasagna with melted cheese.'),
  (4, 'Risotto', 1, 'Italian rice dish cooked with broth until creamy.', 3, 4, '/recipes/img_4.jpg', 'A bowl of creamy risotto.'),
  (5, 'Pesto Pasta', 1, 'Italian pasta dish with basil pesto sauce.', 2, 5, '/recipes/img_5.jpg', 'A plate of pesto pasta with grated cheese.'),
  (6, 'Tiramisu', 1, 'Classic Italian dessert made of coffee-soaked ladyfingers layered with mascarpone cheese.', 3, 6, '/recipes/img_6.jpg', 'A slice of tiramisu dusted with cocoa powder.'),

  -- Mexican cuisine
  (7, 'Tacos al Pastor', 2, 'Mexican tacos with marinated pork, pineapple, and cilantro.', 3, 7, '/recipes/img_7.jpg', 'Tacos filled with marinated pork and fresh pineapple.'),
  (8, 'Guacamole', 2, 'Mexican avocado dip with lime, onions, and tomatoes.', 1, 8, '/recipes/img_8.jpg', 'A bowl of guacamole with tortilla chips.'),
  (9, 'Chicken Enchiladas', 2, 'Rolled tortillas filled with chicken and covered in chili sauce.', 3, 9, '/recipes/img_9.jpg', 'A plate of chicken enchiladas with cheese.'),
  (10, 'Chiles Rellenos', 2, 'Mexican stuffed peppers filled with cheese or meat.', 3, 10, '/recipes/img_10.jpg', 'A plate of chiles rellenos with tomato sauce.'),
  (11, 'Tamales', 2, 'Mexican dish of masa dough filled with meat or cheese, wrapped in corn husks.', 3, 11, '/recipes/img_11.jpg', 'A plate of tamales.'),
  (12, 'Pozole', 2, 'Mexican soup with hominy and pork.', 2, 12, '/recipes/img_12.jpg', 'A bowl of pozole with toppings.'),

  -- Japanese cuisine
  (13, 'Sushi', 3, 'Traditional Japanese dish with vinegared rice and seafood.', 4, 13, '/recipes/img_13.jpg', 'Assorted sushi pieces with fresh fish and rice.'),
  (14, 'Ramen', 3, 'Japanese noodle soup with broth, pork, and vegetables.', 3, 14, '/recipes/img_14.jpg', 'A bowl of ramen with pork slices and egg.'),
  (15, 'Tempura', 3, 'Japanese dish of battered and deep-fried seafood and vegetables.', 2, 15, '/recipes/img_15.jpg', 'Assorted tempura pieces.'),
  (16, 'Teriyaki Chicken', 3, 'Japanese grilled chicken with a sweet soy sauce glaze.', 2, 16, '/recipes/img_16.jpg', 'A plate of teriyaki chicken with rice.'),
  (17, 'Miso Soup', 3, 'Traditional Japanese soup with miso paste, tofu, and seaweed.', 1, 17, '/recipes/img_17.jpg', 'A bowl of miso soup.'),
  (18, 'Okonomiyaki', 3, 'Japanese savory pancake with various ingredients.', 3, 18, '/recipes/img_18.jpg', 'A plate of okonomiyaki topped with bonito flakes.'),

  -- Chinese cuisine
  (19, 'Kung Pao Chicken', 4, 'Spicy stir-fried Chinese dish with chicken, peanuts, and vegetables.', 3, 19, '/recipes/img_19.jpg', 'A bowl of Kung Pao chicken with a spicy sauce.'),
  (20, 'Sweet and Sour Pork', 4, 'Chinese dish with pork in a sweet and tangy sauce.', 3, 20, '/recipes/img_20.jpg', 'A plate of sweet and sour pork.'),
  (21, 'Dumplings', 4, 'Chinese dough wrappers filled with meat and vegetables.', 2, 21, '/recipes/img_21.jpg', 'A plate of steamed dumplings.'),
  (22, 'Fried Rice', 4, 'Chinese stir-fried rice with vegetables and meat.', 2, 22, '/recipes/img_22.jpg', 'A bowl of fried rice.'),
  (23, 'Hot and Sour Soup', 4, 'Spicy and tangy Chinese soup with tofu and vegetables.', 2, 23, '/recipes/img_23.jpg', 'A bowl of hot and sour soup.'),
  (24, 'Peking Duck', 4, 'Chinese roasted duck dish served with pancakes and hoisin sauce.', 4, 24, '/recipes/img_24.jpg', 'Slices of Peking duck with pancakes.'),

  -- French cuisine
  (25, 'Coq au Vin', 5, 'French dish of chicken braised with wine, mushrooms, and garlic.', 4, 25, '/recipes/img_25.jpg', 'A hearty serving of coq au vin in a rich sauce.'),
  (26, 'Ratatouille', 5, 'French vegetable stew with tomatoes, zucchini, and eggplant.', 2, 26, '/recipes/img_26.jpg', 'A colorful bowl of ratatouille.'),
  (27, 'Beef Bourguignon', 5, 'French beef stew braised in red wine.', 4, 27, '/recipes/img_27.jpg', 'A bowl of beef bourguignon with vegetables.'),
  (28, 'Croissants', 5, 'French buttery, flaky, and layered pastry.', 3, 28, '/recipes/img_28.jpg', 'A plate of freshly baked croissants.'),
  (29, 'Quiche Lorraine', 5, 'French tart filled with eggs, cream, cheese, and bacon.', 3, 29, '/recipes/img_29.jpg', 'A slice of quiche lorraine.'),
  (30, 'Crème Brûlée', 5, 'French dessert consisting of a rich custard base topped with a layer of hardened caramelized sugar.', 2, 30, '/recipes/img_30.jpg', 'A ramekin of crème brûlée with a caramelized top.'),

  -- Indian cuisine
  (31, 'Chicken Tikka Masala', 6, 'Indian dish with roasted chicken chunks in a spicy creamy sauce.', 3, 31, '/recipes/img_31.jpg', 'A plate of chicken tikka masala with a side of naan.'),
  (32, 'Palak Paneer', 6, 'Indian dish of spinach and cheese cubes.', 2, 32, '/recipes/img_32.jpg', 'A bowl of palak paneer.'),
  (33, 'Biryani', 6, 'Indian mixed rice dish with spices, meat, and vegetables.', 3, 33, '/recipes/img_33.jpg', 'A plate of biryani with rice and meat.'),
  (34, 'Butter Chicken', 6, 'Indian dish with chicken in a spiced tomato, butter, and cream sauce.', 3, 34, '/recipes/img_34.jpg', 'A bowl of butter chicken with naan.'),
  (35, 'Samosas', 6, 'Indian fried pastry filled with spiced potatoes, peas, and meat.', 2, 35, '/recipes/img_35.jpg', 'A plate of samosas with chutney.'),
  (36, 'Gulab Jamun', 6, 'Indian dessert of deep-fried dough balls soaked in sugar syrup.', 2, 36, '/recipes/img_36.jpg', 'A bowl of gulab jamun.'),

  -- Greek cuisine
  (37, 'Moussaka', 7, 'Greek casserole with layers of eggplant, potatoes, and minced meat.', 4, 37, '/recipes/img_37.jpg', 'A slice of moussaka with a creamy béchamel topping.'),
  (38, 'Souvlaki', 7, 'Greek skewered meat served with pita and vegetables.', 2, 38, '/recipes/img_38.jpg', 'A plate of souvlaki with pita bread.'),
  (39, 'Greek Salad', 7, 'Salad with tomatoes, cucumbers, olives, and feta cheese.', 1, 39, '/recipes/img_39.jpg', 'A bowl of Greek salad.'),
  (40, 'Spanakopita', 7, 'Greek pastry filled with spinach and feta cheese.', 3, 40, '/recipes/img_40.jpg', 'A plate of spanakopita triangles.'),
  (41, 'Baklava', 7, 'Greek dessert made of layered phyllo pastry, nuts, and honey syrup.', 3, 41, '/recipes/img_41.jpg', 'A slice of baklava.'),
  (42, 'Tzatziki', 7, 'Greek dip made with yogurt, cucumber, garlic, and dill.', 1, 42, '/recipes/img_42.jpg', 'A bowl of tzatziki with pita bread.'),

  -- Korean cuisine
  (43, 'Bibimbap', 8, 'Korean mixed rice dish with assorted vegetables, beef, and a fried egg.', 3, 43, '/recipes/img_43.jpg', 'A bowl of bibimbap with colorful vegetables and a sunny-side-up egg.'),
  (44, 'Kimchi', 8, 'Traditional Korean fermented vegetables.', 1, 44, '/recipes/img_44.jpg', 'A bowl of kimchi.'),
  (45, 'Bulgogi', 8, 'Korean grilled marinated beef.', 3, 45, '/recipes/img_45.jpg', 'A plate of bulgogi with sesame seeds.'),
  (46, 'Japchae', 8, 'Korean stir-fried glass noodles with vegetables and meat.', 3, 46, '/recipes/img_46.jpg', 'A bowl of japchae with sesame seeds.'),
  (47, 'Tteokbokki', 8, 'Korean spicy stir-fried rice cakes.', 2, 47, '/recipes/img_47.jpg', 'A plate of tteokbokki with chili sauce.'),
  (48, 'Samgyeopsal', 8, 'Korean grilled pork belly.', 2, 48, '/recipes/img_48.jpg', 'A plate of grilled samgyeopsal with dipping sauces.'),

  -- Vietnamese cuisine
  (49, 'Pho', 9, 'Vietnamese noodle soup with beef, herbs, and broth.', 2, 49, '/recipes/img_49.jpg', 'A steaming bowl of pho with beef slices and fresh herbs.'),
  (50, 'Banh Mi', 9, 'Vietnamese sandwich with meat, pickled vegetables, and cilantro.', 2, 50, '/recipes/img_50.jpg', 'A banh mi sandwich.'),
  (51, 'Spring Rolls', 9, 'Vietnamese fresh rolls with shrimp, vegetables, and rice paper.', 2, 51, '/recipes/img_51.jpg', 'A plate of fresh spring rolls with dipping sauce.'),
  (52, 'Bun Cha', 9, 'Vietnamese grilled pork with noodles and herbs.', 3, 52, '/recipes/img_52.jpg', 'A plate of bun cha with fresh herbs.'),
  (53, 'Goi Cuon', 9, 'Vietnamese salad rolls with shrimp and vegetables.', 2, 53, '/recipes/img_53.jpg', 'A plate of goi cuon with dipping sauce.'),
  (54, 'Ca Kho To', 9, 'Vietnamese caramelized fish in clay pot.', 3, 54, '/recipes/img_54.jpg', 'A clay pot of ca kho to with caramelized fish.'),

  -- Russian cuisine
  (55, 'Beef Stroganoff', 10, 'Russian dish of sautéed beef in a creamy mushroom sauce.', 3, 55, '/recipes/img_55.jpg', 'A plate of beef stroganoff served over egg noodles.'),
  (56, 'Borscht', 10, 'Russian beet soup with sour cream.', 2, 56, '/recipes/img_56.jpg', 'A bowl of borscht with a dollop of sour cream.'),
  (57, 'Pelmeni', 10, 'Russian dumplings filled with meat.', 2, 57, '/recipes/img_57.jpg', 'A plate of pelmeni with sour cream.'),
  (58, 'Shchi', 10, 'Russian cabbage soup.', 2, 58, '/recipes/img_58.jpg', 'A bowl of shchi.'),
  (59, 'Blini', 10, 'Russian pancakes served with caviar or sour cream.', 2, 59, '/recipes/img_59.jpg', 'A plate of blini with caviar and sour cream.'),
  (60, 'Olivier Salad', 10, 'Russian salad with potatoes, vegetables, and mayonnaise.', 2, 60, '/recipes/img_60.jpg', 'A bowl of Olivier salad.');
