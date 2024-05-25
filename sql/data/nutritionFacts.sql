-- Insert data into NutritionFacts table
INSERT INTO NutritionFacts (recipe_id, sequence, fatPerPortion, proteinPerPortion, carbohydratePerPortion)
VALUES
  -- Italian Recipes
  (1, 1, 18, 12, 45), -- Spaghetti Carbonara
  (2, 1, 8, 10, 50), -- Margherita Pizza
  (3, 1, 20, 25, 40), -- Lasagna
  (4, 1, 12, 8, 35), -- Risotto
  
  -- Mexican Recipes
  (5, 1, 15, 25, 30), -- Tacos al Pastor
  (6, 1, 10, 5, 15), -- Guacamole
  (7, 1, 18, 20, 45), -- Enchiladas
  (8, 1, 25, 10, 35), -- Chiles Rellenos
  
  -- Japanese Recipes
  (9, 1, 5, 12, 40), -- Sushi Rolls
  (10, 1, 8, 15, 60), -- Ramen
  (11, 1, 20, 10, 50), -- Tempura
  (12, 1, 12, 15, 55), -- Okonomiyaki
  
  -- Chinese Recipes
  (13, 1, 10, 20, 25), -- Kung Pao Chicken
  (14, 1, 5, 8, 30), -- Dumplings
  (15, 1, 15, 12, 20), -- Mapo Tofu
  (16, 1, 25, 20, 50), -- Peking Duck
  
  -- French Recipes
  (17, 1, 22, 30, 25), -- Coq au Vin
  (18, 1, 8, 5, 15), -- Ratatouille
  (19, 1, 18, 25, 20), -- Boeuf Bourguignon
  (20, 1, 15, 10, 40), -- Croissants
  
  -- Indian Recipes
  (21, 1, 15, 25, 40), -- Chicken Tikka Masala
  (22, 1, 10, 15, 35), -- Palak Paneer
  (23, 1, 8, 5, 20), -- Aloo Gobi
  (24, 1, 10, 20, 55), -- Pad Thai
  
  -- Thai Recipes
  (25, 1, 5, 15, 25), -- Tom Yum Goong
  (26, 1, 20, 25, 30), -- Green Curry
  (27, 1, 10, 5, 20), -- Som Tum
  (28, 1, 10, 20, 55), -- Pad See Ew
  
  -- Spanish Recipes
  (29, 1, 15, 20, 50), -- Paella
  (30, 1, 5, 5, 10), -- Gazpacho
  (31, 1, 10, 15, 35), -- Tortilla Española
  (32, 1, 10, 5, 20), -- Patatas Bravas
  
  -- Greek Recipes
  (33, 1, 25, 20, 45), -- Moussaka
  (34, 1, 5, 5, 15), -- Greek Salad
  (35, 1, 15, 10, 30), -- Spanakopita
  (36, 1, 10, 20, 35), -- Souvlaki
  
  -- Brazilian Recipes
  (37, 1, 25, 20, 50), -- Feijoada
  (38, 1, 10, 5, 25), -- Pão de Queijo
  (39, 1, 20, 15, 30), -- Moqueca
  (40, 1, 0, 0, 10), -- Caipirinha
  
  -- Korean Recipes
  (41, 1, 10, 20, 45), -- Bibimbap
  (42, 1, 5, 5, 15), -- Kimchi
  (43, 1, 10, 20, 25), -- Bulgogi
  (44, 1, 5, 10, 50), -- Tteokbokki
  
  -- Lebanese Recipes
  (45, 1, 10, 5, 15), -- Hummus
  (46, 1, 15, 10, 20), -- Falafel
  (47, 1, 5, 5, 10), -- Tabbouleh
  (48, 1, 20, 25, 30), -- Shawarma

  -- Vietnamese Recipes
  (49, 1, 10, 20, 30), -- Pho
  (50, 1, 5, 10, 40), -- Banh Mi
  (51, 1, 5, 15, 35), -- Goi Cuon
  (52, 1, 10, 20, 25), -- Bun Cha
  
  -- Turkish Recipes
  (53, 1, 15, 25, 30), -- Kebab
  (54, 1, 20, 5, 40), -- Baklava
  (55, 1, 15, 20, 25), -- Köfte
  (56, 1, 10, 5, 20), -- Menemen
  
  -- Russian Recipes
  (57, 1, 5, 10, 20), -- Borscht
  (58, 1, 10, 15, 30), -- Pelmeni
  (59, 1, 15, 25, 20), -- Beef Stroganoff
  (60, 1, 10, 5, 15), -- Piroshki
  
  -- Moroccan Recipes
  (61, 1, 15, 20, 25), -- Tagine
  (62, 1, 10, 5, 35), -- Couscous
  (63, 1, 5, 10, 20), -- Harira
  (64, 1, 20, 10, 40), -- Pastilla
  
  -- Peruvian Recipes
  (65, 1, 5, 20, 10), -- Ceviche
  (66, 1, 20, 25, 35), -- Lomo Saltado
  (67, 1, 15, 20, 30), -- Aji de Gallina
  (68, 1, 10, 20, 15), -- Anticuchos
  
  -- Ethiopian Recipes
  (69, 1, 20, 25, 20), -- Doro Wat
  (70, 1, 5, 5, 30), -- Injera
  (71, 1, 5, 10, 20), -- Misir Wot
  (72, 1, 5, 10, 15), -- Shiro
  
  -- Swedish Recipes
  (73, 1, 20, 15, 20), -- Swedish Meatballs
  (74, 1, 15, 20, 10), -- Gravad Lax
  (75, 1, 20, 25, 30), -- Köttbullar
  (76, 1, 5, 10, 15), -- Smörgåsbord
  
  -- Australian Recipes
  (77, 1, 5, 5, 25), -- Pavlova
  (78, 1, 20, 15, 30), -- Meat Pie
  (79, 1, 10, 5, 20), -- Vegemite on Toast
  (80, 1, 10, 5, 30); -- Anzac Biscuits
