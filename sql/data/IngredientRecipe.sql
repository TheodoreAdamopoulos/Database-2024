-- Insert data into Ingredient_Recipe table
INSERT INTO Ingredient_Recipe (ingredient_id, recipe_id, quantity)
VALUES
  -- Spaghetti Carbonara
  (16, 1, '200 grams'),
  (7, 1, '2 large'),
  (13, 1, '50 grams'),
  (9, 1, '2 cloves'),
  (1, 1, 'to taste'),
  (2, 1, 'to taste'),

  -- Margherita Pizza
  (4, 2, '500 grams'),
  (11, 2, '100 grams'),
  (13, 2, '200 grams'),
  (20, 2, '10 leaves'),
  (6, 2, '2 tablespoons'),
  (1, 2, 'to taste'),
  (2, 2, 'to taste'),

  -- Lasagna
  (16, 3, '300 grams'),
  (15, 3, '500 grams'),
  (13, 3, '200 grams'),
  (4, 3, '50 grams'),
  (10, 3, '1 large'),
  (11, 3, '200 grams'),
  (1, 3, 'to taste'),
  (2, 3, 'to taste'),

  -- Risotto
  (17, 4, '200 grams'),
  (36, 4, '100 grams'),
  (8, 4, '50 ml'),
  (4, 4, '50 grams'),
  (10, 4, '1 large'),
  (1, 4, 'to taste'),
  (2, 4, 'to taste'),

  -- Pesto Pasta
  (16, 5, '200 grams'),
  (20, 5, '50 grams'),
  (6, 5, '2 tablespoons'),
  (13, 5, '50 grams'),
  (9, 5, '2 cloves'),
  (1, 5, 'to taste'),
  (2, 5, 'to taste'),

  -- Tiramisu
  (3, 6, '100 grams'),
  (7, 6, '4 large'),
  (8, 6, '250 ml'),
  (22, 6, '1 teaspoon'),
  (19, 6, '1 tablespoon'),
  (1, 6, 'to taste'),

  -- Tacos al Pastor
  (15, 7, '500 grams'),
  (47, 7, '100 grams'),
  (11, 7, '100 grams'),
  (2, 7, 'to taste'),
  (6, 7, '2 tablespoons'),
  (10, 7, '1 large'),

  -- Guacamole
  (46, 8, '3 large'),
  (57, 8, '1 tablespoon'),
  (10, 8, '1 small'),
  (11, 8, '50 grams'),
  (2, 8, 'to taste'),
  (1, 8, 'to taste'),

  -- Chicken Enchiladas
  (14, 9, '500 grams'),
  (11, 9, '100 grams'),
  (10, 9, '1 large'),
  (16, 9, '200 grams'),
  (1, 9, 'to taste'),
  (2, 9, 'to taste'),

  -- Chiles Rellenos
  (37, 10, '4 large'),
  (13, 10, '200 grams'),
  (11, 10, '100 grams'),
  (1, 10, 'to taste'),
  (2, 10, 'to taste'),

  -- Tamales
  (4, 11, '500 grams'),
  (11, 11, '100 grams'),
  (14, 11, '500 grams'),
  (1, 11, 'to taste'),
  (2, 11, 'to taste'),

  -- Pozole
  (15, 12, '500 grams'),
  (12, 12, '200 grams'),
  (10, 12, '1 large'),
  (9, 12, '2 cloves'),
  (1, 12, 'to taste'),
  (2, 12, 'to taste'),

  -- Sushi
  (17, 13, '200 grams'),
  (13, 13, '100 grams'),
  (30, 13, '2 tablespoons'),
  (9, 13, '2 cloves'),
  (11, 13, '50 grams'),

  -- Ramen
  (17, 14, '200 grams'),
  (15, 14, '500 grams'),
  (36, 14, '100 grams'),
  (10, 14, '1 large'),
  (1, 14, 'to taste'),
  (2, 14, 'to taste'),

  -- Tempura
  (4, 15, '200 grams'),
  (15, 15, '200 grams'),
  (10, 15, '1 large'),
  (12, 15, '200 grams'),
  (2, 15, 'to taste'),
  (1, 15, 'to taste'),

  -- Teriyaki Chicken
  (14, 16, '500 grams'),
  (6, 16, '2 tablespoons'),
  (30, 16, '3 tablespoons'),
  (1, 16, 'to taste'),
  (2, 16, 'to taste'),

  -- Miso Soup
  (17, 17, '200 grams'),
  (8, 17, '500 ml'),
  (1, 17, 'to taste'),
  (2, 17, 'to taste'),

  -- Okonomiyaki
  (4, 18, '200 grams'),
  (15, 18, '200 grams'),
  (10, 18, '1 large'),
  (13, 18, '100 grams'),
  (9, 18, '2 cloves'),

  -- Kung Pao Chicken
  (15, 19, '500 grams'),
  (37, 19, '100 grams'),
  (30, 19, '2 tablespoons'),
  (9, 19, '2 cloves'),
  (1, 19, 'to taste'),
  (2, 19, 'to taste'),

  -- Sweet and Sour Pork
  (15, 20, '500 grams'),
  (47, 20, '100 grams'),
  (11, 20, '100 grams'),
  (9, 20, '2 cloves'),
  (1, 20, 'to taste'),
  (2, 20, 'to taste'),

  -- Dumplings
  (4, 21, '200 grams'),
  (15, 21, '300 grams'),
  (11, 21, '100 grams'),
  (9, 21, '2 cloves'),
  (1, 21, 'to taste'),
  (2, 21, 'to taste'),

  -- Fried Rice
  (17, 22, '200 grams'),
  (14, 22, '200 grams'),
  (11, 22, '100 grams'),
  (36, 22, '100 grams'),
  (1, 22, 'to taste'),
  (2, 22, 'to taste'),

  -- Hot and Sour Soup
  (17, 23, '200 grams'),
  (36, 23, '100 grams'),
  (9, 23, '2 cloves'),
  (1, 23, 'to taste'),
  (2, 23, 'to taste'),

  -- Peking Duck
  (15, 24, '1 whole'),
  (9, 24, '2 cloves'),
  (30, 24, '2 tablespoons'),
  (1, 24, 'to taste'),
  (2, 24, 'to taste'),

  -- Coq au Vin
  (14, 25, '1 whole'),
  (25, 25, '2 tablespoons'),
  (11, 25, '100 grams'),
  (9, 25, '2 cloves'),
  (1, 25, 'to taste'),
  (2, 25, 'to taste'),

  -- Ratatouille
  (11, 26, '200 grams'),
  (45, 26, '100 grams'),
  (42, 26, '100 grams'),
  (2, 26, 'to taste'),
  (1, 26, 'to taste'),

  -- Beef Bourguignon
  (15, 27, '500 grams'),
  (25, 27, '2 tablespoons'),
  (11, 27, '100 grams'),
  (9, 27, '2 cloves'),
  (1, 27, 'to taste'),
  (2, 27, 'to taste'),

  -- Croissants
  (4, 28, '500 grams'),
  (5, 28, '200 grams'),
  (7, 28, '3 large'),
  (3, 28, '50 grams'),

  -- Quiche Lorraine
  (4, 29, '200 grams'),
  (13, 29, '100 grams'),
  (14, 29, '200 grams'),
  (7, 29, '2 large'),
  (1, 29, 'to taste'),
  (2, 29, 'to taste'),

  -- Crème Brûlée
  (8, 30, '250 ml'),
  (3, 30, '50 grams'),
  (7, 30, '3 large'),
  (22, 30, '1 teaspoon'),

  -- Chicken Tikka Masala
  (14, 31, '500 grams'),
  (30, 31, '3 tablespoons'),
  (19, 31, '1 tablespoon'),
  (11, 31, '100 grams'),
  (2, 31, 'to taste'),
  (1, 31, 'to taste'),

  -- Palak Paneer
  (14, 32, '200 grams'),
  (40, 32, '200 grams'),
  (13, 32, '100 grams'),
  (9, 32, '2 cloves'),
  (1, 32, 'to taste'),
  (2, 32, 'to taste'),

  -- Biryani
  (17, 33, '300 grams'),
  (14, 33, '500 grams'),
  (11, 33, '100 grams'),
  (9, 33, '2 cloves'),
  (1, 33, 'to taste'),
  (2, 33, 'to taste'),

  -- Butter Chicken
  (14, 34, '500 grams'),
  (30, 34, '3 tablespoons'),
  (19, 34, '1 tablespoon'),
  (11, 34, '100 grams'),
  (1, 34, 'to taste'),
  (2, 34, 'to taste'),

  -- Samosas
  (4, 35, '200 grams'),
  (12, 35, '200 grams'),
  (11, 35, '100 grams'),
  (1, 35, 'to taste'),
  (2, 35, 'to taste'),

  -- Gulab Jamun
  (3, 36, '100 grams'),
  (4, 36, '200 grams'),
  (5, 36, '50 grams'),

  -- Moussaka
  (15, 37, '500 grams'),
  (45, 37, '200 grams'),
  (11, 37, '100 grams'),
  (1, 37, 'to taste'),
  (2, 37, 'to taste'),

  -- Souvlaki
  (15, 38, '500 grams'),
  (6, 38, '2 tablespoons'),
  (11, 38, '100 grams'),
  (2, 38, 'to taste'),
  (1, 38, 'to taste'),

  -- Greek Salad
  (11, 39, '200 grams'),
  (41, 39, '100 grams'),
  (13, 39, '100 grams'),
  (6, 39, '2 tablespoons'),
  (2, 39, 'to taste'),
  (1, 39, 'to taste'),

  -- Spanakopita
  (4, 40, '200 grams'),
  (40, 40, '200 grams'),
  (13, 40, '100 grams'),
  (1, 40, 'to taste'),
  (2, 40, 'to taste'),

  -- Baklava
  (4, 41, '200 grams'),
  (68, 41, '100 grams'),
  (23, 41, '50 grams'),

  -- Tzatziki
  (116, 42, '200 grams'),
  (44, 42, '100 grams'),
  (9, 42, '2 cloves'),
  (1, 42, 'to taste'),
  (2, 42, 'to taste'),

  -- Bibimbap
  (17, 43, '200 grams'),
  (15, 43, '200 grams'),
  (40, 43, '100 grams'),
  (11, 43, '100 grams'),
  (1, 43, 'to taste'),
  (2, 43, 'to taste'),

  -- Kimchi
  (40, 44, '200 grams'),
  (37, 44, '100 grams'),
  (10, 44, '1 large'),
  (9, 44, '2 cloves'),
  (2, 44, 'to taste'),
  (1, 44, 'to taste'),

  -- Bulgogi
  (15, 45, '500 grams'),
  (30, 45, '3 tablespoons'),
  (19, 45, '1 tablespoon'),
  (11, 45, '100 grams'),
  (2, 45, 'to taste'),
  (1, 45, 'to taste'),

  -- Japchae
  (17, 46, '200 grams'),
  (15, 46, '200 grams'),
  (40, 46, '100 grams'),
  (11, 46, '100 grams'),
  (1, 46, 'to taste'),
  (2, 46, 'to taste'),

  -- Tteokbokki
  (17, 47, '200 grams'),
  (15, 47, '200 grams'),
  (30, 47, '2 tablespoons'),
  (2, 47, 'to taste'),
  (1, 47, 'to taste'),

  -- Samgyeopsal
  (15, 48, '500 grams'),
  (6, 48, '2 tablespoons'),
  (2, 48, 'to taste'),
  (1, 48, 'to taste'),

  -- Pho
  (17, 49, '200 grams'),
  (15, 49, '200 grams'),
  (11, 49, '100 grams'),
  (9, 49, '2 cloves'),
  (2, 49, 'to taste'),
  (1, 49, 'to taste'),

  -- Banh Mi
  (91, 50, '1 whole'),
  (15, 50, '200 grams'),
  (11, 50, '100 grams'),
  (47, 50, '50 grams'),
  (2, 50, 'to taste'),
  (1, 50, 'to taste'),

  -- Spring Rolls
  (11, 51, '100 grams'),
  (40, 51, '100 grams'),
  (15, 51, '100 grams'),
  (1, 51, 'to taste'),
  (2, 51, 'to taste'),

  -- Bun Cha
  (15, 52, '500 grams'),
  (6, 52, '2 tablespoons'),
  (11, 52, '100 grams'),
  (2, 52, 'to taste'),
  (1, 52, 'to taste'),

  -- Goi Cuon
  (11, 53, '100 grams'),
  (40, 53, '100 grams'),
  (15, 53, '100 grams'),
  (1, 53, 'to taste'),
  (2, 53, 'to taste'),

  -- Ca Kho To
  (15, 54, '500 grams'),
  (23, 54, '50 grams'),
  (9, 54, '2 cloves'),
  (1, 54, 'to taste'),
  (2, 54, 'to taste'),

  -- Beef Stroganoff
  (15, 55, '500 grams'),
  (36, 55, '100 grams'),
  (8, 55, '200 ml'),
  (1, 55, 'to taste'),
  (2, 55, 'to taste'),

  -- Borscht
  (11, 56, '200 grams'),
  (12, 56, '200 grams'),
  (38, 56, '100 grams'),
  (1, 56, 'to taste'),
  (2, 56, 'to taste'),

  -- Pelmeni
  (4, 57, '200 grams'),
  (15, 57, '300 grams'),
  (11, 57, '100 grams'),
  (1, 57, 'to taste'),
  (2, 57, 'to taste'),

  -- Shchi
  (40, 58, '200 grams'),
  (10, 58, '1 large'),
  (12, 58, '200 grams'),
  (1, 58, 'to taste'),
  (2, 58, 'to taste'),

  -- Blini
  (4, 59, '200 grams'),
  (7, 59, '3 large'),
  (8, 59, '200 ml'),
  (1, 59, 'to taste'),
  (2, 59, 'to taste'),

  -- Olivier Salad
  (12, 60, '200 grams'),
  (38, 60, '100 grams'),
  (33, 60, '3 tablespoons'),
  (11, 60, '100 grams'),
  (1, 60, 'to taste'),
  (2, 60, 'to taste');
