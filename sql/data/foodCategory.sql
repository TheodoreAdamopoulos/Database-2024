-- Insert data into FoodCategory table
INSERT INTO FoodCategory (id, name, description)
VALUES
  (1, 'Aromatic herbs and essential oils', 'Category for aromatic herbs and essential oils used in cooking and flavoring.'),
  (2, 'Coffee, tea, and related products', 'Category for coffee, tea, and other related products derived from them.'),
  (3, 'Preserved foods', 'Category for foods that have been preserved through various methods such as canning, drying, or pickling.'),
  (4, 'Sweeteners', 'Category for sweetening agents used in food and beverage preparation, including sugar, honey, and artificial sweeteners.'),
  -- Only recipes 9 and 10 are related with food category 5 and they are not appear in  Attempt.
  (5, 'Fats and oils', 'Category for fats and oils used in cooking and food preparation, including butter, olive oil, and vegetable oil.'),
  (6, 'Milk, eggs, and related products', 'Category for dairy products such as milk, cheese, and yogurt, as well as eggs and egg-based products.'),
  (7, 'Meat and meat products', 'Category for various types of meat and meat-based products, including beef, pork, poultry, and processed meats.'),
  (8, 'Fish and fish products', 'Category for various types of fish and seafood, as well as processed fish products such as canned tuna and fish fillets.'),
  (9, 'Cereals and cereal products', 'Category for grains and grain-based products, including wheat, rice, oats, and products made from them such as bread, pasta, and breakfast cereals.'),
  (10, 'Various plant-based foods', 'Category for a variety of plant-based foods, including fruits, vegetables, nuts, seeds, and legumes.'),
  (11, 'Products containing sweeteners', 'Category for food and beverage products that contain added sweeteners, including candies, soft drinks, and desserts.'),
  -- There are no recipe with basic ingredient related food category 12.
  (12, 'Various beverages', 'Category for a variety of beverages, including soft drinks, juices, alcoholic beverages, and other drinks consumed for refreshment or enjoyment.');
