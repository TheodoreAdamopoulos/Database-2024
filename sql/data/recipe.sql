-- Italian Recipes
INSERT INTO Recipe (id, name, cuisine_id, description, difficulty, ingredient_id, image_url, image_description)
VALUES
  (1, 'Spaghetti Carbonara', 1, 'A classic Italian pasta dish with eggs, cheese, pancetta, and pepper.', 2, 1, '/recipes/img_1.jpg', 'A plate of spaghetti carbonara with a creamy sauce.'),
  (2, 'Margherita Pizza', 1, 'Traditional Italian pizza with tomatoes, mozzarella, and basil.', 2, 2, '/recipes/img_2.jpg', 'A freshly baked margherita pizza.'),
  (3, 'Lasagna', 1, 'Italian layered pasta dish with meat, cheese, and tomato sauce.', 3, 3, '/recipes/img_3.jpg', 'A slice of lasagna with melted cheese.'),
  (4, 'Risotto', 1, 'Italian rice dish cooked with broth until creamy.', 3, 4, '/recipes/img_4.jpg', 'A bowl of creamy risotto.'),

-- Mexican Recipes
  (5, 'Tacos al Pastor', 2, 'Marinated pork cooked on a vertical spit, served on tortillas with pineapple and onions.', 2, 5, '/recipes/img_5.jpg', 'Tacos al pastor garnished with pineapple and cilantro.'),
  (6, 'Guacamole', 2, 'Mexican dip made from mashed avocado, lime juice, onions, tomatoes, and cilantro.', 1, 6, '/recipes/img_6.jpg', 'A bowl of fresh guacamole with tortilla chips.'),
  (7, 'Enchiladas', 2, 'Corn tortillas rolled around a filling, covered with chili sauce and cheese, then baked.', 3, 7, '/recipes/img_7.jpg', 'A plate of enchiladas topped with melted cheese.'),
  (8, 'Chiles Rellenos', 2, 'Poblano peppers stuffed with cheese, then battered and fried.', 3, 8, '/recipes/img_8.jpg', 'Chiles rellenos served with salsa and rice.'),

-- Japanese Recipes
  (9, 'Sushi Rolls', 3, 'Japanese dish consisting of rice and various ingredients, rolled in seaweed and sliced into bite-size pieces.', 3, 9, '/recipes/img_9.jpg', 'Assorted sushi rolls served on a plate.'),
  (10, 'Ramen', 3, 'Japanese noodle soup dish with broth, noodles, and various toppings like sliced pork, seaweed, and green onions.', 2, 10, '/recipes/img_10.jpg', 'A bowl of steaming ramen with toppings.'),
  (11, 'Tempura', 3, 'Japanese dish of battered and deep-fried seafood and vegetables.', 3, 11, '/recipes/img_11.jpg', 'Assorted tempura served with dipping sauce.'),
  (12, 'Okonomiyaki', 3, 'Japanese savory pancake containing a variety of ingredients like cabbage, meat, and seafood.', 2, 12, '/recipes/img_12.jpg', 'A freshly cooked okonomiyaki topped with sauce and bonito flakes.'),

-- Chinese Recipes
  (13, 'Kung Pao Chicken', 4, 'Chinese stir-fry dish made with chicken, peanuts, vegetables, and chili peppers.', 2, 13, '/recipes/img_13.jpg', 'A plate of kung pao chicken with peanuts and vegetables.'),
  (14, 'Dumplings', 4, 'Chinese dish consisting of dough filled with meat and/or vegetables, often steamed or fried.', 3, 14, '/recipes/img_14.jpg', 'A plate of freshly steamed dumplings.'),
  (15, 'Mapo Tofu', 4, 'Chinese dish from Sichuan province made with tofu, minced meat, fermented black beans, and chili peppers.', 2, 15, '/recipes/img_15.jpg', 'A bowl of mapo tofu garnished with green onions.'),
  (16, 'Peking Duck', 4, 'Chinese dish of roasted duck served with pancakes, spring onions, cucumber, and hoisin sauce.', 3, 16, '/recipes/img_16.jpg', 'A platter of sliced Peking duck with accompaniments.'),

-- French Recipes
  (17, 'Coq au Vin', 5, 'French dish of chicken braised with wine, lardons, mushrooms, and garlic.', 3, 17, '/recipes/img_17.jpg', 'A plate of coq au vin garnished with parsley.'),
  (18, 'Ratatouille', 5, 'French Provençal stewed vegetable dish, originating in Nice, consisting of zucchini, tomatoes, eggplant, and onions.', 2, 18, '/recipes/img_18.jpg', 'A bowl of ratatouille with colorful vegetables.'),
  (19, 'Boeuf Bourguignon', 5, 'French beef stew cooked in red wine, flavored with carrots, onions, garlic, and mushrooms.', 3, 19, '/recipes/img_19.jpg', 'A bowl of boeuf bourguignon served with crusty bread.'),
  (20, 'Croissants', 5, 'French pastry made of layered yeast-leavened dough, rolled and folded several times, then rolled into a sheet.', 2, 20, '/recipes/img_20.jpg', 'Freshly baked croissants served on a plate.'),

-- Indian Recipes
  (21, 'Chicken Tikka Masala', 6, 'Indian dish of marinated and grilled chicken chunks, served in a creamy tomato sauce.', 3, 21, '/recipes/img_21.jpg', 'A plate of chicken tikka masala with rice and naan bread.'),
  (22, 'Palak Paneer', 6, 'Indian dish consisting of spinach and paneer (Indian cheese) in a thick curry sauce.', 3, 22, '/recipes/img_22.jpg', 'A bowl of palak paneer garnished with cream.'),
  (23, 'Aloo Gobi', 6, 'Indian vegetarian dish made with potatoes, cauliflower, and Indian spices.', 2, 23, '/recipes/img_23.jpg', 'A bowl of aloo gobi garnished with cilantro.'),
  (24, 'Pad Thai', 7, 'Indian stir-fried rice noodle dish commonly served as a street food and at casual local eateries in Thailand.', 2, 24, '/recipes/img_24.jpg', 'A plate of pad thai garnished with peanuts and lime wedges.'),

-- Thai Recipes
  (25, 'Tom Yum Goong', 7, 'Thai spicy and sour soup usually cooked with shrimp, lemongrass, kaffir lime leaves, galangal, lime juice, fish sauce, and crushed red chili peppers.', 3, 25, '/recipes/img_25.jpg', 'A bowl of tom yum soup with shrimp and herbs.'),
  (26, 'Green Curry', 7, 'Thai dish made with green curry paste, coconut milk, meat, seafood, or tofu, and vegetables, served with rice or noodles.', 3, 26, '/recipes/img_26.jpg', 'A bowl of green curry with chicken and rice.'),
  (27, 'Som Tum', 7, 'Thai green papaya salad made from shredded unripe papaya, tomatoes, carrots, lime juice, fish sauce, peanuts, and chili.', 2, 27, '/recipes/img_27.jpg', 'A plate of som tum garnished with peanuts and chili.'),
  (28, 'Pad See Ew', 7, 'Thai stir-fried noodle dish made with wide rice noodles, soy sauce, meat or tofu, egg, Chinese broccoli, and garlic.', 2, 28, '/recipes/img_28.jpg', 'A plate of pad see ew with chicken and vegetables.'),

-- Spanish Recipes
  (29, 'Paella', 8, 'Spanish rice dish originally from Valencia, made with saffron-infused rice, meat, seafood, and vegetables.', 3, 29, '/recipes/img_29.jpg', 'A pan of paella with seafood and lemon wedges.'),
  (30, 'Gazpacho', 8, 'Spanish cold soup made of raw, blended vegetables, such as tomato, cucumber, bell pepper, onion, and garlic.', 1, 100, '/recipes/img_30.jpg', 'A bowl of gazpacho garnished with diced vegetables.'),
  (31, 'Tortilla Española', 8, 'Spanish omelette made with eggs, potatoes, onions, and olive oil, often served as a tapa.', 2, 101, '/recipes/img_31.jpg', 'A slice of tortilla española on a plate.'),
  (32, 'Patatas Bravas', 8, 'Spanish tapa of fried potatoes served with a spicy tomato sauce and aioli.', 2, 102, '/recipes/img_32.jpg', 'A plate of patatas bravas with dipping sauces.'),

-- Greek Recipes
  (33, 'Moussaka', 9, 'Greek baked casserole dish made with layers of eggplant, minced meat, and tomatoes, topped with a béchamel sauce.', 3, 103, '/recipes/img_33.jpg', 'A slice of moussaka served on a plate.'),
  (34, 'Greek Salad', 9, 'Traditional Greek salad made with tomatoes, cucumbers, olives, onions, and feta cheese, seasoned with olive oil and oregano.', 1, 104, '/recipes/img_34.jpg', 'A bowl of Greek salad with feta cheese.'),
  (35, 'Spanakopita', 9, 'Greek spinach and feta cheese pie wrapped in layers of phyllo dough.', 2, 105, '/recipes/img_35.jpg', 'A slice of spanakopita on a plate.'),
  (36, 'Souvlaki', 9, 'Greek dish of skewered and grilled meat, usually served with pita bread and tzatziki sauce.', 2, 36, '/recipes/img_36.jpg', 'A plate of souvlaki skewers with pita bread and tzatziki sauce.'),

-- Brazilian Recipes
  (37, 'Feijoada', 10, 'Brazilian stew of black beans with pork or beef, typically served with rice, collard greens, and orange slices.', 3, 37, '/recipes/img_37.jpg', 'A bowl of feijoada with rice, collard greens, and orange slices.'),
  (38, 'Pão de Queijo', 10, 'Brazilian cheese bread made with tapioca flour and cheese, often served as a snack or breakfast food.', 2, 38, '/recipes/img_38.jpg', 'A plate of pão de queijo with coffee.'),
  (39, 'Moqueca', 10, 'Brazilian fish stew made with coconut milk, tomatoes, onions, garlic, peppers, and cilantro.', 3, 39, '/recipes/img_39.jpg', 'A bowl of moqueca with fish and vegetables.'),
  (40, 'Caipirinha', 10, 'Brazilian cocktail made with cachaca (sugarcane spirit), lime, sugar, and ice.', 1, 40, '/recipes/img_40.jpg', 'A glass of caipirinha with lime and ice.'),

-- Korean Recipes
  (41, 'Bibimbap', 11, 'Korean mixed rice dish topped with vegetables, beef, a fried egg, and gochujang (chili pepper paste).', 2, 41, '/recipes/img_41.jpg', 'A bowl of bibimbap with assorted toppings.'),
  (42, 'Kimchi', 11, 'Korean fermented vegetable dish, usually made with napa cabbage and radishes, seasoned with chili pepper, garlic, ginger, and salt.', 2, 42, '/recipes/img_42.jpg', 'A bowl of kimchi with cabbage and chili peppers.'),
  (43, 'Bulgogi', 11, 'Korean grilled marinated beef, typically served with rice and lettuce leaves for wrapping.', 2, 43, '/recipes/img_43.jpg', 'A plate of bulgogi with rice and lettuce leaves.'),
  (44, 'Tteokbokki', 11, 'Korean spicy rice cake dish made with cylindrical rice cakes, fish cakes, and a sweet and spicy chili sauce.', 2, 44, '/recipes/img_44.jpg', 'A plate of tteokbokki with chopsticks.'),

-- Lebanese Recipes
  (45, 'Hummus', 12, 'Lebanese dip or spread made from cooked, mashed chickpeas blended with tahini, olive oil, lemon juice, salt, and garlic.', 1, 45, '/recipes/img_45.jpg', 'A bowl of hummus garnished with olive oil and parsley.'),
  (46, 'Falafel', 12, 'Lebanese deep-fried ball or patty made from ground chickpeas, fava beans, or both, usually served in a pita pocket with vegetables and tahini sauce.', 2, 46, '/recipes/img_46.jpg', 'A plate of falafel with pita bread and vegetables.'),
  (47, 'Tabbouleh', 12, 'Lebanese salad made with chopped parsley, tomatoes, mint, onion, bulgur, and seasoned with olive oil, lemon juice, and salt.', 1, 120, '/recipes/img_47.jpg', 'A bowl of tabbouleh garnished with lemon wedges.'),
  (48, 'Shawarma', 12, 'Lebanese meat preparation, where lamb, chicken, turkey, beef, veal, or mixed meats are placed on a spit and may be grilled for as long as a day.', 3, 121, '/recipes/img_48.jpg', 'A plate of shawarma meat with pita bread and vegetables.'),

  -- Vietnamese Recipes
  (49, 'Pho', 13, 'Vietnamese noodle soup consisting of broth, rice noodles, herbs, and meat, often beef or chicken.', 3, 122, '/recipes/img_49.jpg', 'A bowl of pho with beef slices and herbs.'),
  (50, 'Banh Mi', 13, 'Vietnamese sandwich consisting of a baguette filled with various savory ingredients such as meat, pickled vegetables, and cilantro.', 2, 50, '/recipes/img_50.jpg', 'A Vietnamese banh mi sandwich with meat and vegetables.'),
  (51, 'Goi Cuon', 13, 'Vietnamese fresh spring rolls made with shrimp, pork, vegetables, rice vermicelli, and herbs, wrapped in rice paper.', 2, 51, '/recipes/img_51.jpg', 'A plate of goi cuon with dipping sauce.'),
  (52, 'Bun Cha', 13, 'Vietnamese dish of grilled pork served with rice vermicelli, fresh herbs, and dipping sauce.', 2, 52, '/recipes/img_52.jpg', 'A plate of bun cha with grilled pork and noodles.'),

-- Turkish Recipes
  (53, 'Kebab', 14, 'Turkish dish consisting of meat (often lamb or beef) cooked on a skewer, usually served with vegetables, rice, or bread.', 2, 53, '/recipes/img_53.jpg', 'A plate of kebab with rice and grilled vegetables.'),
  (54, 'Baklava', 14, 'Turkish dessert made of layers of filo pastry filled with chopped nuts and sweetened with syrup or honey.', 2, 54, '/recipes/img_54.jpg', 'A plate of baklava with pistachios.'),
  (55, 'Köfte', 14, 'Turkish meatball dish made from ground meat (usually beef or lamb) mixed with onions, herbs, and spices, then grilled or fried.', 2, 55, '/recipes/img_55.jpg', 'A plate of köfte with grilled vegetables and rice.'),
  (56, 'Menemen', 14, 'Turkish breakfast dish made from eggs, tomatoes, green peppers, and spices, often served with bread.', 2, 56, '/recipes/img_56.jpg', 'A plate of menemen with bread slices.'),

-- Russian Recipes
  (57, 'Borscht', 15, 'Russian beetroot soup with other vegetables such as cabbage, carrots, onions, and potatoes, usually served with sour cream.', 3, 57, '/recipes/img_57.jpg', 'A bowl of borscht soup with sour cream.'),
  (58, 'Pelmeni', 15, 'Russian dumplings made with a thin, unleavened dough filled with minced meat, usually served with sour cream.', 2, 58, '/recipes/img_58.jpg', 'A plate of pelmeni with sour cream and herbs.'),
  (59, 'Beef Stroganoff', 15, 'Russian dish of sautéed pieces of beef served in a sauce with sour cream, mushrooms, and onions, often served over rice or noodles.', 3, 59, '/recipes/img_59.jpg', 'A plate of beef stroganoff with rice.'),
  (60, 'Piroshki', 15, 'Russian stuffed pastries filled with a variety of fillings, such as meat, vegetables, or cheese, then baked or fried.', 2, 60, '/recipes/img_60.jpg', 'A plate of piroshki with various fillings.'),

-- Moroccan Recipes
  (61, 'Tagine', 16, 'Moroccan stew cooked in a conical clay pot called a tagine, typically containing meat, poultry, or fish, along with vegetables, fruits, and spices.', 3, 61, '/recipes/img_61.jpg', 'A tagine pot with Moroccan stew and couscous.'),
  (62, 'Couscous', 16, 'Traditional Berber dish of steamed semolina served with a stew made of meat and vegetables.', 2, 62, '/recipes/img_62.jpg', 'A plate of couscous with vegetables and meat.'),
  (63, 'Harira', 16, 'Moroccan soup made with tomatoes, lentils, chickpeas, and various spices, often served during Ramadan.', 2, 63, '/recipes/img_63.jpg', 'A bowl of harira soup garnished with herbs.'),
  (64, 'Pastilla', 16, 'Moroccan pie made of thin pastry dough filled with spiced meat (usually pigeon or chicken), almonds, and eggs, topped with powdered sugar and cinnamon.', 3, 64, '/recipes/img_64.jpg', 'A slice of pastilla garnished with powdered sugar and cinnamon.'),

-- Peruvian Recipes
  (65, 'Ceviche', 17, 'Peruvian dish of raw fish marinated in citrus juices, typically lime or lemon, and spiced with chili peppers, onions, and cilantro.', 2, 65, '/recipes/img_65.jpg', 'A bowl of ceviche with fish, onions, and cilantro.'),
  (66, 'Lomo Saltado', 17, 'Peruvian stir-fry dish made with marinated strips of beef, onions, tomatoes, and other vegetables, served with rice and fried potatoes.', 3, 66, '/recipes/img_66.jpg', 'A plate of lomo saltado with rice and fries.'),
  (67, 'Aji de Gallina', 17, 'Peruvian dish made with shredded chicken in a creamy sauce made of cheese, walnuts, and yellow chili peppers, often served with rice and boiled potatoes.', 3, 67, '/recipes/img_67.jpg', 'A plate of aji de gallina with rice and potatoes.'),
  (68, 'Anticuchos', 17, 'Peruvian street food made from marinated and grilled skewers of meat, usually beef heart, served with potatoes and a spicy sauce.', 2, 68, '/recipes/img_68.jpg', 'A plate of anticuchos with potatoes and huancaina sauce.'),

-- Ethiopian Recipes
  (69, 'Doro Wat', 18, 'Ethiopian spicy chicken stew made with berbere spice blend, onions, garlic, ginger, and served with injera (Ethiopian flatbread).', 3, 69, '/recipes/img_69.jpg', 'A plate of doro wat with injera bread.'),
  (70, 'Injera', 18, 'Ethiopian sourdough flatbread with a unique, slightly spongy texture, usually served as a base for stews and salads.', 2, 70, '/recipes/img_70.jpg', 'A stack of injera bread on a plate.'),
  (71, 'Misir Wot', 18, 'Ethiopian spicy red lentil stew made with berbere spice blend, onions, garlic, and ginger.', 2, 72, '/recipes/img_72.jpg', 'A bowl of misir wot with injera bread.'),
  (72, 'Shiro', 18, 'Ethiopian dish made from powdered chickpeas or lentils, cooked with berbere spice blend, onions, and garlic, often served with injera.', 2, 73, '/recipes/img_73.jpg', 'A plate of shiro with injera bread.'),

-- Swedish Recipes
  (73, 'Swedish Meatballs', 19, 'Swedish dish consisting of meatballs made from ground beef or pork, seasoned with spices such as allspice and nutmeg, served with gravy, lingonberry sauce, and mashed potatoes.', 2, 75, '/recipes/img_75.jpg', 'A plate of Swedish meatballs with lingonberry sauce and mashed potatoes.'),
  (74, 'Gravad Lax', 19, 'Swedish dish of thinly sliced raw salmon cured in salt, sugar, and dill, usually served with mustard sauce and bread.', 2, 76, '/recipes/img_76.jpg', 'A plate of gravad lax with mustard sauce and bread slices.'),
  (75, 'Köttbullar', 19, 'Swedish meatballs made with a mixture of ground meat (usually beef, pork, or veal), breadcrumbs, egg, onion, and spices, served with cream sauce and lingonberry jam.', 2, 77, '/recipes/img_77.jpg', 'A plate of köttbullar with cream sauce and lingonberry jam.'),
  (76, 'Smörgåsbord', 19, 'Swedish buffet-style meal with a variety of cold and hot dishes served on a table, typically including herring, cured salmon, meatballs, potatoes, salads, and bread.', 1, 78, '/recipes/img_78.jpg', 'A traditional Swedish smörgåsbord with a variety of dishes.'),

-- Australian Recipes
  (77, 'Pavlova', 20, 'Australian dessert consisting of a meringue base topped with whipped cream and fresh fruits, such as strawberries, kiwifruit, and passionfruit.', 2, 79, '/recipes/img_79.jpg', 'A pavlova dessert topped with whipped cream and fruits.'),
  (78, 'Meat Pie', 20, 'Australian savory pie filled with minced meat (usually beef), gravy, and sometimes onions, served hot with tomato sauce.', 2, 80, '/recipes/img_80.jpg', 'A meat pie served with tomato sauce.'),
  (79, 'Vegemite on Toast', 20, 'Australian breakfast or snack consisting of toast spread with Vegemite, a dark brown Australian food paste made from various vegetables, yeast extract, and spice additives.', 1, 81, '/recipes/img_81.jpg', 'A slice of toast with Vegemite spread.'),
  (80, 'Anzac Biscuits', 20, 'Australian sweet biscuit made with rolled oats, coconut, golden syrup, and butter, traditionally associated with the Australian and New Zealand Army Corps (ANZAC) from World War I.', 2, 82, '/recipes/img_82.jpg', 'A plate of Anzac biscuits with a cup of tea.') ;