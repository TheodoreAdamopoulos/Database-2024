-- Insert data into NutritionFacts table
INSERT INTO NutritionFacts (recipe_id, fatPerPortion, proteinPerPortion, carbohydratePerPortion)
VALUES
  -- Italian Recipes
  (1, 18, 12, 45), -- Spaghetti Carbonara
  (2, 8, 10, 50), -- Margherita Pizza
  (3, 20, 25, 40), -- Lasagna
  (4, 12, 8, 35), -- Risotto
  
  -- Mexican Recipes
  (5, 15, 25, 30), -- Tacos al Pastor
  (6, 10, 5, 15), -- Guacamole
  (7, 18, 20, 45), -- Enchiladas
  (8, 25, 10, 35), -- Chiles Rellenos
  
  -- Japanese Recipes
  (9, 5, 12, 40), -- Sushi Rolls
  (10, 8, 15, 60), -- Ramen
  (11, 20, 10, 50), -- Tempura
  (12, 12, 15, 55), -- Okonomiyaki
  
  -- Chinese Recipes
  (13, 10, 20, 25), -- Kung Pao Chicken
  (14, 5, 8, 30), -- Dumplings
  (15, 15, 12, 20), -- Mapo Tofu
  (16, 25, 20, 50), -- Peking Duck
  
  -- French Recipes
  (17, 22, 30, 25), -- Coq au Vin
  (18, 8, 5, 15), -- Ratatouille
  (19, 18, 25, 20), -- Boeuf Bourguignon
  (20, 15, 10, 40), -- Croissants
  
  -- Indian Recipes
  (21, 15, 25, 40), -- Chicken Tikka Masala
  (22, 10, 15, 35), -- Palak Paneer
  (23, 8, 5, 20), -- Aloo Gobi
  (24, 10, 20, 55), -- Pad Thai
  
  -- Thai Recipes
  (25, 5, 15, 25), -- Tom Yum Goong
  (26, 20, 25, 30), -- Green Curry
  (27, 10, 5, 20), -- Som Tum
  (28, 10, 20, 55), -- Pad See Ew
  
  -- Spanish Recipes
  (29, 15, 20, 50), -- Paella
  (30, 5, 5, 10), -- Gazpacho
  (31, 10, 15, 35), -- Tortilla Española
  (32, 10, 5, 20), -- Patatas Bravas
  
  -- Greek Recipes
  (33, 25, 20, 45), -- Moussaka
  (34, 5, 5, 15), -- Greek Salad
  (35, 15, 10, 30), -- Spanakopita
  (36, 10, 20, 35), -- Souvlaki
  
  -- Brazilian Recipes
  (37, 25, 20, 50), -- Feijoada
  (38, 10, 5, 25), -- Pão de Queijo
  (39, 20, 15, 30), -- Moqueca
  (40, 0, 0, 10), -- Caipirinha
  
  -- Korean Recipes
  (41, 10, 20, 45), -- Bibimbap
  (42, 5, 5, 15), -- Kimchi
  (43, 10, 20, 25), -- Bulgogi
  (44, 5, 10, 50), -- Tteokbokki
  
  -- Lebanese Recipes
  (45, 10, 5, 15), -- Hummus
  (46, 15, 10, 20), -- Falafel
  (47, 5, 5, 10), -- Tabbouleh
  (48, 20, 25, 30), -- Shawarma

  -- Vietnamese Recipes
  (49, 10, 20, 30), -- Pho
  (50, 5, 10, 40), -- Banh Mi
  (51, 5, 15, 35), -- Goi Cuon
  (52, 10, 20, 25), -- Bun Cha
  
  -- Turkish Recipes
  (53, 15, 25, 30), -- Kebab
  (54, 20, 5, 40), -- Baklava
  (55, 15, 20, 25), -- Köfte
  (56, 10, 5, 20), -- Menemen
  
  -- Russian Recipes
  (57, 5, 10, 20), -- Borscht
  (58, 10, 15, 30), -- Pelmeni
  (59, 15, 25, 20), -- Beef Stroganoff
  (60, 10, 5, 15), -- Piroshki
  
  -- Moroccan Recipes
  (61, 15, 20, 25), -- Tagine
  (62, 10, 5, 35), -- Couscous
  (63, 5, 10, 20), -- Harira
  (64, 20, 10, 40), -- Pastilla
  
  -- Peruvian Recipes
  (65, 5, 20, 10), -- Ceviche
  (66, 20, 25, 35), -- Lomo Saltado
  (67, 15, 20, 30), -- Aji de Gallina
  (68, 10, 20, 15), -- Anticuchos
  
  -- Ethiopian Recipes
  (69, 20, 25, 20), -- Doro Wat
  (70, 5, 5, 30), -- Injera
  (71, 5, 10, 20), -- Misir Wot
  (72, 5, 10, 15), -- Shiro
  
  -- Swedish Recipes
  (73, 20, 15, 20), -- Swedish Meatballs
  (74, 15, 20, 10), -- Gravad Lax
  (75, 20, 25, 30), -- Köttbullar
  (76, 5, 10, 15), -- Smörgåsbord
  
  -- Australian Recipes
  (77, 5, 5, 25), -- Pavlova
  (78, 20, 15, 30), -- Meat Pie
  (79, 10, 5, 20), -- Vegemite on Toast
  (80, 10, 5, 30); -- Anzac Biscuits
