-- Insert data into UserAccount table
INSERT INTO
  Account (id, username, password, is_admin)
VALUES
  (1, 'john_doe', 'password1', FALSE),
  (2, 'jane_doe', 'password2', FALSE),
  (3, 'alice_smith', 'password3', FALSE),
  (4, 'bob_jones', 'password4', FALSE),
  (5, 'emily_brown', 'password5', FALSE),
  (6, 'michael_wilson', 'password6', FALSE),
  (7, 'sarah_taylor', 'password7', FALSE),
  (8, 'william_clark', 'password8', FALSE),
  (9, 'linda_hall', 'password9', FALSE),
  (10, 'david_davis', 'password10', FALSE),
  (11, 'susan_lewis', 'password11', FALSE),
  (12, 'robert_thomas', 'password12', FALSE),
  (13, 'mary_rodriguez', 'password13', FALSE),
  (14, 'james_martin', 'password14', FALSE),
  (15, 'elizabeth_hernandez', 'password15', FALSE),
  (16, 'charles_young', 'password16', FALSE),
  (17, 'karen_nguyen', 'password17', FALSE),
  (18, 'joseph_kim', 'password18', FALSE),
  (19, 'patricia_lee', 'password19', FALSE),
  (20, 'thomas_lee', 'password20', FALSE),
  (21, 'barbara_choi', 'password21', FALSE),
  (22, 'daniel_gonzalez', 'password22', FALSE),
  (23, 'sandra_garcia', 'password23', FALSE),
  (24, 'christopher_wang', 'password24', FALSE),
  (25, 'lisa_smith', 'password25', FALSE),
  (26, 'matthew_johnson', 'password26', FALSE),
  (27, 'nancy_lee', 'password27', FALSE),
  (28, 'jennifer_taylor', 'password28', FALSE),
  (29, 'steven_miller', 'password29', FALSE),
  (30, 'angela_rodriguez', 'password30', FALSE),
  (31, 'kevin_kim', 'password31', FALSE),
  (32, 'laura_martinez', 'password32', FALSE),
  (33, 'brian_anderson', 'password33', FALSE),
  (34, 'dorothy_brown', 'password34', FALSE),
  (35, 'gary_jones', 'password35', FALSE),
  (36, 'karen_smith', 'password36', FALSE),
  (37, 'jason_rodriguez', 'password37', FALSE),
  (38, 'deborah_clark', 'password38', FALSE),
  (39, 'paul_wilson', 'password39', FALSE),
  (40, 'pamela_thomas', 'password40', FALSE),
  (41, 'justin_hall', 'password41', FALSE),
  (42, 'heather_jackson', 'password42', FALSE),
  (43, 'dennis_harris', 'password43', FALSE),
  (44, 'denise_martin', 'password44', FALSE),
  (45, 'frank_rodriguez', 'password45', FALSE),
  (46, 'teresa_davis', 'password46', FALSE),
  (47, 'larry_lee', 'password47', FALSE),
  (48, 'kathleen_nguyen', 'password48', FALSE),
  (49, 'rachel_kim', 'password49', FALSE),
  (50, 'scott_wilson', 'password50', FALSE),
  (51, 'amy_smith', 'password51', FALSE),
  (52, 'ryan_thomas', 'password52', FALSE),
  (53, 'samantha_martinez', 'password53', FALSE),
  (54, 'henry_jones', 'password54', FALSE),
  (55, 'kathryn_davis', 'password55', FALSE),
  (56, 'raymond_gonzalez', 'password56', FALSE),
  (57, 'rita_rodriguez', 'password57', FALSE),
  (58, 'victor_wilson', 'password58', FALSE),
  (59, 'juan_garcia', 'password59', FALSE),
  (60, 'diana_rodriguez', 'password60', FALSE),
  (61, 'ekaragiannis', 'admin1', TRUE),
  (62, 'tadamopoulos', 'admin2', TRUE);




-- Insert data into Cook table
INSERT INTO Cook
  (user_id, first_name, last_name, phone_number, date_of_birth, years_of_experience, image_url, job_title)
 VALUES
  (1, 'John', 'Doe', '+1234567890', '1990-01-01', 5, '/cooks/img_1.jpg', 'Chef'),
  (2, 'Jane', 'Doe', '+1234567891', '1991-02-02', 3, '/cooks/img_2.jpg', 'Assistant Chef'),
  (3, 'Alice', 'Smith', '+1234567892', '1992-03-03', 2, '/cooks/img_3.jpg', 'Cook A'),
  (4, 'Bob', 'Jones', '+1234567893', '1993-04-04', 4, '/cooks/img_4.jpg', 'Cook B'),
  (5, 'Emily', 'Brown', '+1234567894', '1994-05-05', 1, '/cooks/img_5.jpg', 'Cook C'),
  (6, 'Michael', 'Wilson', '+1234567895', '1995-06-06', 6, '/cooks/img_6.jpg', 'Chef'),
  (7, 'Sarah', 'Taylor', '+1234567896', '1996-07-07', 2, '/cooks/img_7.jpg', 'Assistant Chef'),
  (8, 'William', 'Clark', '+1234567897', '1997-08-08', 3, '/cooks/img_8.jpg', 'Cook A'),
  (9, 'Linda', 'Hall', '+1234567898', '1998-09-09', 4, '/cooks/img_9.jpg', 'Cook B'),
  (10, 'David', 'Davis', '+1234567899', '1999-10-10', 5, '/cooks/img_10.jpg', 'Cook C'),
  (11, 'Susan', 'Lewis', '+1234567800', '1980-11-11', 6, '/cooks/img_11.jpg', 'Chef'),
  (12, 'Robert', 'Thomas', '+1234567801', '1981-12-12', 3, '/cooks/img_12.jpg', 'Assistant Chef'),
  (13, 'Mary', 'Rodriguez', '+1234567802', '1982-01-01', 2, '/cooks/img_13.jpg', 'Cook A'),
  (14, 'James', 'Martin', '+1234567803', '1983-02-02', 4, '/cooks/img_14.jpg', 'Cook B'),
  (15, 'Elizabeth', 'Hernandez', '+1234567804', '1984-03-03', 5, '/cooks/img_15.jpg', 'Cook C'),
  (16, 'Charles', 'Young', '+1234567805', '1985-04-04', 1, '/cooks/img_16.jpg', 'Chef'),
  (17, 'Karen', 'Nguyen', '+1234567806', '1986-05-05', 2, '/cooks/img_17.jpg', 'Assistant Chef'),
  (18, 'Joseph', 'Kim', '+1234567807', '1987-06-06', 3, '/cooks/img_18.jpg', 'Cook A'),
  (19, 'Patricia', 'Lee', '+1234567808', '1988-07-07', 4, '/cooks/img_19.jpg', 'Cook B'),
  (20, 'Thomas', 'Lee', '+1234567809', '1989-08-08', 5, '/cooks/img_20.jpg', 'Cook C'),
  (21, 'Barbara', 'Choi', '+1234567810', '1990-09-09', 6, '/cooks/img_21.jpg', 'Chef'),
  (22, 'Daniel', 'Gonzalez', '+1234567811', '1991-10-10', 3, '/cooks/img_22.jpg', 'Assistant Chef'),
  (23, 'Sandra', 'Garcia', '+1234567812', '1992-11-11', 2, '/cooks/img_23.jpg', 'Cook A'),
  (24, 'Christopher', 'Wang', '+1234567813', '1993-12-12', 4, '/cooks/img_24.jpg', 'Cook B'),
  (25, 'Lisa', 'Smith', '+1234567814', '1994-01-01', 5, '/cooks/img_25.jpg', 'Cook C'),
  (26, 'Matthew', 'Johnson', '+1234567815', '1995-02-02', 1, '/cooks/img_26.jpg', 'Chef'),
  (27, 'Nancy', 'Lee', '+1234567816', '1996-03-03', 2, '/cooks/img_27.jpg', 'Assistant Chef'),
  (28, 'Jennifer', 'Taylor', '+1234567817', '1997-04-04', 3, '/cooks/img_28.jpg', 'Cook A'),
  (29, 'Steven', 'Miller', '+1234567818', '1998-05-05', 4, '/cooks/img_29.jpg', 'Cook B'),
  (30, 'Angela', 'Rodriguez', '+1234567819', '1999-06-06', 5, '/cooks/img_30.jpg', 'Cook C'),
  (31, 'Kevin', 'Kim', '+1234567820', '1980-07-07', 6, '/cooks/img_31.jpg', 'Chef'),
  (32, 'Laura', 'Martinez', '+1234567821', '1981-08-08', 3, '/cooks/img_32.jpg', 'Assistant Chef'),
  (33, 'Brian', 'Anderson', '+1234567822', '1982-09-09', 2, '/cooks/img_33.jpg', 'Cook A'),
  (34, 'Dorothy', 'Brown', '+1234567823', '1983-10-10', 4, '/cooks/img_34.jpg', 'Cook B'),
  (35, 'Gary', 'Jones', '+1234567824', '1984-11-11', 5, '/cooks/img_35.jpg', 'Cook C'),
  (36, 'Karen', 'Smith', '+1234567825', '1985-12-12', 1, '/cooks/img_36.jpg', 'Chef'),
  (37, 'Jason', 'Rodriguez', '+1234567826', '1986-01-01', 2, '/cooks/img_37.jpg', 'Assistant Chef'),
  (38, 'Deborah', 'Clark', '+1234567827', '1987-02-02', 3, '/cooks/img_38.jpg', 'Cook A'),
  (39, 'Paul', 'Wilson', '+1234567828', '1988-03-03', 4, '/cooks/img_39.jpg', 'Cook B'),
  (40, 'Pamela', 'Thomas', '+1234567829', '1989-04-04', 5, '/cooks/img_40.jpg', 'Cook C'),
  (41, 'Justin', 'Hall', '+1234567830', '1990-05-05', 6, '/cooks/img_41.jpg', 'Chef'),
  (42, 'Heather', 'Jackson', '+1234567831', '1991-06-06', 3, '/cooks/img_42.jpg', 'Assistant Chef'),
  (43, 'Dennis', 'Harris', '+1234567832', '1992-07-07', 2, '/cooks/img_43.jpg', 'Cook A'),
  (44, 'Denise', 'Martin', '+1234567833', '1993-08-08', 4, '/cooks/img_44.jpg', 'Cook B'),
  (45, 'Frank', 'Rodriguez', '+1234567834', '1994-09-09', 5, '/cooks/img_45.jpg', 'Cook C'),
  (46, 'Teresa', 'Davis', '+1234567835', '1995-10-10', 1, '/cooks/img_46.jpg', 'Chef'),
  (47, 'Larry', 'Lee', '+1234567836', '1996-11-11', 2, '/cooks/img_47.jpg', 'Assistant Chef'),
  (48, 'Kathleen', 'Nguyen', '+1234567837', '1997-12-12', 3, '/cooks/img_48.jpg', 'Cook A'),
  (49, 'Rachel', 'Kim', '+1234567838', '1998-01-01', 4, '/cooks/img_49.jpg', 'Cook B'),
  (50, 'Scott', 'Wilson', '+1234567839', '1999-02-02', 5, '/cooks/img_50.jpg', 'Cook C'),
  (51, 'Amy', 'Smith', '+1234567840', '1980-03-03', 6, '/cooks/img_51.jpg', 'Chef'),
  (52, 'Ryan', 'Thomas', '+1234567841', '1981-04-04', 3, '/cooks/img_52.jpg', 'Assistant Chef'),
  (53, 'Samantha', 'Martinez', '+1234567842', '1982-05-05', 2, '/cooks/img_53.jpg', 'Cook A'),
  (54, 'Henry', 'Jones', '+1234567843', '1983-06-06', 4, '/cooks/img_54.jpg', 'Cook B'),
  (55, 'Kathryn', 'Davis', '+1234567844', '1984-07-07', 5, '/cooks/img_55.jpg', 'Cook C'),
  (56, 'Raymond', 'Gonzalez', '+1234567845', '1985-08-08', 1, '/cooks/img_56.jpg', 'Chef'),
  (57, 'Rita', 'Rodriguez', '+1234567846', '1986-09-09', 2, '/cooks/img_57.jpg', 'Assistant Chef'),
  (58, 'Victor', 'Wilson', '+1234567847', '1987-10-10', 3, '/cooks/img_58.jpg', 'Cook A'),
  (59, 'Juan', 'Garcia', '+1234567848', '1988-11-11', 4, '/cooks/img_59.jpg', 'Cook B'),
  (60, 'Diana', 'Rodriguez', '+1234567849', '1989-12-12', 5, '/cooks/img_60.jpg', 'Cook C');



-- Insert data into Cuisine table
INSERT INTO Cuisine (id, nationality, image_url)
VALUES
  (1, 'Italian', '/cuisines/img_1.jpg'),
  (2, 'Mexican', '/cuisines/img_2.jpg'),
  (3, 'Japanese', '/cuisines/img_3.jpg'),
  (4, 'Chinese', '/cuisines/img_4.jpg'),
  (5, 'French', '/cuisines/img_5.jpg'),
  (6, 'Indian', '/cuisines/img_6.jpg'),
  (7, 'Thai', '/cuisines/img_7.jpg'),
  (8, 'Spanish', '/cuisines/img_8.jpg'),
  (9, 'Greek', '/cuisines/img_9.jpg'),
  (10, 'Brazilian', '/cuisines/img_10.jpg'),
  (11, 'Korean', '/cuisines/img_11.jpg'),
  (12, 'Lebanese', '/cuisines/img_12.jpg'),
  (13, 'Vietnamese', '/cuisines/img_13.jpg'),
  (14, 'Turkish', '/cuisines/img_14.jpg'),
  (15, 'Moroccan', '/cuisines/img_15.jpg'),
  (16, 'Russian', '/cuisines/img_16.jpg'),
  (17, 'Peruvian', '/cuisines/img_17.jpg'),
  (18, 'Australian', '/cuisines/img_18.jpg'),
  (19, 'Swedish', '/cuisines/img_19.jpg'),
  (20, 'Argentinian', '/cuisines/img_20.jpg');


-- Insert data into Ingredient table
INSERT INTO Ingredient
  (id, name, image_url, caloriesPer100)
VALUES
  (1, 'Salt', '/ingredients/salt.jpg', 0),
  (2, 'Pepper', '/ingredients/pepper.jpg', 0),
  (3, 'Sugar', '/ingredients/sugar.jpg', 387),
  (4, 'Flour', '/ingredients/flour.jpg', 364),
  (5, 'Butter', '/ingredients/butter.jpg', 717),
  (6, 'Olive Oil', '/ingredients/olive_oil.jpg', 884),
  (7, 'Eggs', '/ingredients/eggs.jpg', 143),
  (8, 'Milk', '/ingredients/milk.jpg', 42),
  (9, 'Garlic', '/ingredients/garlic.jpg', 149),
  (10, 'Onion', '/ingredients/onion.jpg', 40),
  (11, 'Tomato', '/ingredients/tomato.jpg', 18),
  (12, 'Potato', '/ingredients/potato.jpg', 77),
  (13, 'Cheese', '/ingredients/cheese.jpg', 402),
  (14, 'Chicken Breast', '/ingredients/chicken_breast.jpg', 165),
  (15, 'Beef', '/ingredients/beef.jpg', 250),
  (16, 'Pasta', '/ingredients/pasta.jpg', 131),
  (17, 'Rice', '/ingredients/rice.jpg', 130),
  (18, 'Lemon', '/ingredients/lemon.jpg', 29),
  (19, 'Ginger', '/ingredients/ginger.jpg', 80),
  (20, 'Basil', '/ingredients/basil.jpg', 23),
  (21, 'Cinnamon', '/ingredients/cinnamon.jpg', 247),
  (22, 'Vanilla', '/ingredients/vanilla.jpg', 288),
  (23, 'Honey', '/ingredients/honey.jpg', 304),
  (24, 'Nutmeg', '/ingredients/nutmeg.jpg', 525),
  (25, 'Thyme', '/ingredients/thyme.jpg', 101),
  (26, 'Rosemary', '/ingredients/rosemary.jpg', 131),
  (27, 'Oregano', '/ingredients/oregano.jpg', 265),
  (28, 'Paprika', '/ingredients/paprika.jpg', 282),
  (29, 'Chili Powder', '/ingredients/chili_powder.jpg', 282),
  (30, 'Soy Sauce', '/ingredients/soy_sauce.jpg', 53),
  (31, 'Mustard', '/ingredients/mustard.jpg', 66),
  (32, 'Mayonnaise', '/ingredients/mayonnaise.jpg', 680),
  (33, 'Ketchup', '/ingredients/ketchup.jpg', 101),
  (34, 'Worcestershire Sauce', '/ingredients/worcestershire_sauce.jpg', 78),
  (35, 'Vinegar', '/ingredients/vinegar.jpg', 18),
  (36, 'Mushrooms', '/ingredients/mushrooms.jpg', 22),
  (37, 'Bell Pepper', '/ingredients/bell_pepper.jpg', 31),
  (38, 'Carrot', '/ingredients/carrot.jpg', 41),
  (39, 'Celery', '/ingredients/celery.jpg', 16),
  (40, 'Spinach', '/ingredients/spinach.jpg', 23),
  (41, 'Lettuce', '/ingredients/lettuce.jpg', 15),
  (42, 'Broccoli', '/ingredients/broccoli.jpg', 34),
  (43, 'Cauliflower', '/ingredients/cauliflower.jpg', 25),
  (44, 'Cucumber', '/ingredients/cucumber.jpg', 16),
  (45, 'Zucchini', '/ingredients/zucchini.jpg', 17),
  (46, 'Avocado', '/ingredients/avocado.jpg', 160),
  (47, 'Pineapple', '/ingredients/pineapple.jpg', 50),
  (48, 'Apple', '/ingredients/apple.jpg', 52),
  (49, 'Banana', '/ingredients/banana.jpg', 89),
  (50, 'Strawberry', '/ingredients/strawberry.jpg', 32),
  (51, 'Blueberry', '/ingredients/blueberry.jpg', 57),
  (52, 'Raspberry', '/ingredients/raspberry.jpg', 52),
  (53, 'Blackberry', '/ingredients/blackberry.jpg', 43),
  (54, 'Watermelon', '/ingredients/watermelon.jpg', 30),
  (55, 'Grapes', '/ingredients/grapes.jpg', 69),
  (56, 'Orange', '/ingredients/orange.jpg', 47),
  (57, 'Lime', '/ingredients/lime.jpg', 30),
  (58, 'Cherry', '/ingredients/cherry.jpg', 50),
  (59, 'Peach', '/ingredients/peach.jpg', 39),
  (60, 'Plum', '/ingredients/plum.jpg', 46),
  (61, 'Apricot', '/ingredients/apricot.jpg', 48),
  (62, 'Pear', '/ingredients/pear.jpg', 57),
  (63, 'Melon', '/ingredients/melon.jpg', 36),
  (64, 'Kiwi', '/ingredients/kiwi.jpg', 61),
  (65, 'Mango', '/ingredients/mango.jpg', 60),
  (66, 'Pomegranate', '/ingredients/pomegranate.jpg', 83),
  (67, 'Coconut', '/ingredients/coconut.jpg', 354),
  (68, 'Hazelnut', '/ingredients/hazelnut.jpg', 628),
  (69, 'Almond', '/ingredients/almond.jpg', 579),
  (70, 'Peanut', '/ingredients/peanut.jpg', 567),
  (71, 'Walnut', '/ingredients/walnut.jpg', 654),
  (72, 'Pistachio', '/ingredients/pistachio.jpg', 562),
  (73, 'Cashew', '/ingredients/cashew.jpg', 553),
  (74, 'Macadamia', '/ingredients/macadamia.jpg', 718),
  (75, 'Pecan', '/ingredients/pecan.jpg', 691),
  (76, 'Brazil Nut', '/ingredients/brazil_nut.jpg', 656),
  (77, 'Chestnut', '/ingredients/chestnut.jpg', 131),
  (78, 'Pumpkin Seeds', '/ingredients/pumpkin_seeds.jpg', 574),
  (79, 'Sunflower Seeds', '/ingredients/sunflower_seeds.jpg', 584),
  (80, 'Chia Seeds', '/ingredients/chia_seeds.jpg', 486),
  (81, 'Flaxseeds', '/ingredients/flaxseeds.jpg', 534),
  (82, 'Poppy Seeds', '/ingredients/poppy_seeds.jpg', 525),
  (83, 'Sesame Seeds', '/ingredients/sesame_seeds.jpg', 573),
  (84, 'Quinoa', '/ingredients/quinoa.jpg', 120),
  (85, 'Buckwheat', '/ingredients/buckwheat.jpg', 343),
  (86, 'Barley', '/ingredients/barley.jpg', 354),
  (87, 'Oats', '/ingredients/oats.jpg', 389),
  (88, 'Corn', '/ingredients/corn.jpg', 86),
  (89, 'Couscous', '/ingredients/couscous.jpg', 112),
  (90, 'Bread', '/ingredients/bread.jpg', 265),
  (91, 'Baguette', '/ingredients/baguette.jpg', 290),
  (92, 'Croissant', '/ingredients/croissant.jpg', 406),
  (93, 'Pita Bread', '/ingredients/pita_bread.jpg', 275),
  (94, 'Naan', '/ingredients/naan.jpg', 317),
  (95, 'Tortilla', '/ingredients/tortilla.jpg', 218),
  (96, 'Sourdough', '/ingredients/sourdough.jpg', 230),
  (97, 'Rye Bread', '/ingredients/rye_bread.jpg', 259),
  (98, 'Whole Wheat Bread', '/ingredients/whole_wheat_bread.jpg', 247),
  (99, 'Pumpernickel Bread', '/ingredients/pumpernickel_bread.jpg', 250),
  (100, 'Bagel', '/ingredients/bagel.jpg', 278),
  (101, 'English Muffin', '/ingredients/english_muffin.jpg', 157),
  (102, 'Roll', '/ingredients/roll.jpg', 250),
  (103, 'Biscuit', '/ingredients/biscuit.jpg', 470),
  (104, 'Muffin', '/ingredients/muffin.jpg', 265),
  (105, 'Cookie', '/ingredients/cookie.jpg', 471),
  (106, 'Cake', '/ingredients/cake.jpg', 325),
  (107, 'Pie', '/ingredients/pie.jpg', 237),
  (108, 'Cupcake', '/ingredients/cupcake.jpg', 339),
  (109, 'Brownie', '/ingredients/brownie.jpg', 466),
  (110, 'Donut', '/ingredients/donut.jpg', 452),
  (111, 'Waffle', '/ingredients/waffle.jpg', 291),
  (112, 'Pancake', '/ingredients/pancake.jpg', 227),
  (113, 'Crepe', '/ingredients/crepe.jpg', 90),
  (114, 'Cereal', '/ingredients/cereal.jpg', 366),
  (115, 'Granola', '/ingredients/granola.jpg', 471),
  (116, 'Yogurt', '/ingredients/yogurt.jpg', 59),
  (117, 'Milkshake', '/ingredients/milkshake.jpg', 132),
  (118, 'Smoothie', '/ingredients/smoothie.jpg', 57),
  (119, 'Ice Cream', '/ingredients/ice_cream.jpg', 207),
  (120, 'Sorbet', '/ingredients/sorbet.jpg', 100),
  (121, 'Gelato', '/ingredients/gelato.jpg', 144),
  (122, 'Sherbet', '/ingredients/sherbet.jpg', 144);



-- Insert data into Recipe table
INSERT INTO Recipe
  (id, name, cuisine_id, description, difficulty, ingredient_id, image_url)
VALUES
  (1, 'Spaghetti Carbonara', 1, 'Classic Italian pasta dish with bacon, eggs, and Parmesan cheese in a creamy sauce.', 3, 1, '/recipes/spaghetti_carbonara.jpg'),
  (2, 'Margherita Pizza', 1, 'Traditional Italian pizza topped with tomato sauce, fresh mozzarella cheese, and basil leaves.', 2, 2, '/recipes/margherita_pizza.jpg'),
  (3, 'Tacos al Pastor', 2, 'Mexican street food consisting of spit-grilled pork, pineapple, onion, and cilantro, served on a corn tortilla.', 3, 3, '/recipes/tacos_al_pastor.jpg'),
  (4, 'Sushi Rolls', 3, 'Japanese dish consisting of vinegared rice, seafood, vegetables, and sometimes tropical fruits, wrapped in seaweed.', 4, 4, '/recipes/sushi_rolls.jpg'),
  (5, 'Kung Pao Chicken', 4, 'Traditional Chinese stir-fry dish made with chicken, peanuts, vegetables, and chili peppers.', 3, 5, '/recipes/kung_pao_chicken.jpg'),
  (6, 'Coq au Vin', 5, 'French dish of chicken braised with wine, lardons, mushrooms, and garlic.', 4, 6, '/recipes/coq_au_vin.jpg'),
  (7, 'Chicken Tikka Masala', 6, 'Indian dish of roasted chicken chunks in a creamy, spicy, tomato-based sauce.', 3, 7, '/recipes/chicken_tikka_masala.jpg'),
  (8, 'Pad Thai', 7, 'Thai stir-fried rice noodle dish commonly served as a street food and at casual local eateries.', 3, 8, '/recipes/pad_thai.jpg'),
  (9, 'Paella', 8, 'Spanish rice dish originally from Valencia, typically made with saffron-infused rice, seafood, and meat.', 4, 9, '/recipes/paella.jpg'),
  (10, 'Greek Salad', 9, 'Traditional Greek salad made with fresh tomatoes, cucumbers, red onions, olives, and feta cheese.', 2, 10, '/recipes/greek_salad.jpg'),
  (11, 'Feijoada', 10, 'Brazilian stew of black beans with pork or beef, typically served with rice, collard greens, and orange slices.', 4, 11, '/recipes/feijoada.jpg'),
  (12, 'Kimchi', 11, 'Korean fermented vegetable dish, usually made with napa cabbage and Korean radishes, seasoned with chili pepper, garlic, ginger, and scallions.', 4, 12, '/recipes/kimchi.jpg'),
  (13, 'Falafel', 12, 'Lebanese deep-fried balls or patties made from ground chickpeas, fava beans, or both, often served in a pita.', 3, 13, '/recipes/falafel.jpg'),
  (14, 'Pho', 13, 'Vietnamese soup consisting of broth, rice noodles, herbs, and meat, often beef or chicken.', 3, 14, '/recipes/pho.jpg'),
  (15, 'Kebab', 14, 'Turkish dish consisting of meat, vegetables, or seafood skewered and grilled over an open fire or on a grill.', 3, 15, '/recipes/kebab.jpg'),
  (16, 'Couscous', 15, 'Moroccan dish of steamed semolina served with a stew made of meat and vegetables.', 3, 16, '/recipes/couscous.jpg'),
  (17, 'Borscht', 16, 'Russian soup of Ukrainian origin made with beetroot as a main ingredient, usually served hot or cold.', 4, 17, '/recipes/borscht.jpg'),
  (18, 'Ceviche', 17, 'Peruvian dish of raw fish marinated in citrus juices, typically with onions, chili peppers, and cilantro.', 3, 18, '/recipes/ceviche.jpg'),
  (19, 'Pavlova', 18, 'Australian dessert consisting of a meringue base topped with whipped cream and fresh fruit.', 3, 19, '/recipes/pavlova.jpg'),
  (20, 'Swedish Meatballs', 19, 'Swedish dish of meatballs made from ground meat, typically served with gravy, lingonberry sauce, and mashed potatoes.', 3, 20, '/recipes/swedish_meatballs.jpg'),
  (21, 'Empanadas', 20, 'Argentinian pastry filled with meat, cheese, vegetables, or fruits, baked or fried.', 3, 21, '/recipes/empanadas.jpg'),
  (22, 'Lasagna', 1, 'Italian dish consisting of layers of pasta, meat sauce, and cheese, baked until bubbly and golden brown.', 3, 22, '/recipes/lasagna.jpg'),
  (23, 'Enchiladas', 2, 'Mexican dish made with rolled tortillas stuffed with a filling, covered in sauce, and baked.', 3, 23, '/recipes/enchiladas.jpg'),
  (24, 'Sushi Nigiri', 3, 'Japanese dish of bite-sized rice balls topped with seafood, often served with soy sauce and wasabi.', 4, 24, '/recipes/sushi_nigiri.jpg'),
  (25, 'Sweet and Sour Pork', 4, 'Chinese dish of deep-fried pork pieces coated in a tangy sauce made from vinegar, sugar, and soy sauce.', 3, 25, '/recipes/sweet_sour_pork.jpg'),
  (26, 'Beef Bourguignon', 5, 'French beef stew braised in red wine, flavored with garlic, onions, carrots, and mushrooms.', 4, 26, '/recipes/beef_bourguignon.jpg'),
  (27, 'Chicken Curry', 6, 'Indian dish of chicken cooked in a spiced tomato-based sauce, often served with rice or bread.', 3, 27, '/recipes/chicken_curry.jpg'),
  (28, 'Tom Yum Soup', 7, 'Thai hot and sour soup flavored with lemongrass, kaffir lime leaves, galangal, and chili peppers.', 3, 28, '/recipes/tom_yum_soup.jpg'),
  (29, 'Gazpacho', 8, 'Spanish cold soup made from tomatoes, peppers, cucumbers, onions, garlic, and bread, blended until smooth.', 2, 29, '/recipes/gazpacho.jpg'),
  (30, 'Moussaka', 9, 'Greek casserole dish made with layers of eggplant, minced meat, and potatoes, topped with a creamy béchamel sauce.', 3, 30, '/recipes/moussaka.jpg'),
  (31, 'Pão de Queijo', 10, 'Brazilian cheese bread made with tapioca flour and cheese, often served as a snack or breakfast item.', 2, 31, '/recipes/pao_de_queijo.jpg'),
  (32, 'Bibimbap', 11, 'Korean mixed rice dish topped with vegetables, meat, a fried egg, and gochujang (chili pepper paste).', 3, 32, '/recipes/bibimbap.jpg'),
  (33, 'Tabbouleh', 12, 'Lebanese salad made with parsley, tomatoes, mint, onion, bulgur, and seasoned with olive oil, lemon juice, and salt.', 2, 33, '/recipes/tabbouleh.jpg'),
  (34, 'Pho Bo', 13, 'Vietnamese beef noodle soup made with beef broth, rice noodles, thinly sliced beef, and herbs.', 3, 34, '/recipes/pho_bo.jpg'),
  (35, 'Iskender Kebab', 14, 'Turkish dish consisting of thinly sliced lamb or beef, served over pita bread, topped with tomato sauce and yogurt.', 3, 35, '/recipes/iskender_kebab.jpg'),
  (36, 'Tagine', 15, 'Moroccan stew named after the earthenware pot in which it is cooked, typically made with meat, vegetables, and spices.', 3, 36, '/recipes/tagine.jpg'),
  (37, 'Pelmeni', 16, 'Russian dumplings filled with minced meat, often served with sour cream or melted butter.', 3, 37, '/recipes/pelmeni.jpg'),
  (38, 'Causa Rellena', 17, 'Peruvian dish of mashed yellow potatoes seasoned with lime juice and chili peppers, layered with fillings such as chicken, tuna, or avocado.', 3, 38, '/recipes/causa_rellena.jpg'),
  (39, 'Divine Pavlova', 18, 'Australian dessert consisting of a meringue base topped with whipped cream and fresh fruit.', 3, 39, '/recipes/pavlova.jpg'),
  (40, 'Nordic Delight Meatballs', 19, 'Swedish dish of meatballs made from ground meat, typically served with gravy, lingonberry sauce, and mashed potatoes.', 3, 40, '/recipes/swedish_meatballs.jpg'),
  (41, 'Milanesa', 20, 'Argentinian dish of breaded and fried meat cutlets, typically made from beef, chicken, or veal.', 3, 41, '/recipes/milanesa.jpg'),
  (42, 'Carbonnade Flamande', 5, 'Belgian beef and onion stew made with beer, seasoned with thyme, bay leaf, and mustard.', 4, 42, '/recipes/carbonnade_flamande.jpg'),
  (43, 'Chiles en Nogada', 2, 'Mexican dish of poblano chiles stuffed with picadillo (a mixture of meat, fruits, and spices), topped with walnut-based cream sauce and pomegranate seeds.', 4, 43, '/recipes/chiles_en_nogada.jpg'),
  (44, 'Tempura', 3, 'Japanese dish of battered and deep-fried seafood and vegetables, typically served as a side dish or appetizer.', 3, 44, '/recipes/tempura.jpg'),
  (45, 'Mapo Tofu', 4, 'Chinese dish of tofu and minced meat cooked in a spicy, oily sauce, typically flavored with fermented black beans, chili peppers, and Szechuan peppercorns.', 3, 45, '/recipes/mapo_tofu.jpg'),
  (46, 'Quiche Lorraine', 5, 'French tart consisting of a pastry crust filled with eggs, cream, and bacon, cheese, or vegetables.', 3, 46, '/recipes/quiche_lorraine.jpg'),
  (47, 'Butter Chicken', 6, 'Indian dish of marinated chicken cooked in a rich, creamy sauce made with butter, tomatoes, and various spices.', 3, 47, '/recipes/butter_chicken.jpg'),
  (48, 'Tom Kha Gai', 7, 'Thai coconut soup with chicken, flavored with lemongrass, galangal, kaffir lime leaves, and chili peppers.', 3, 48, '/recipes/tom_kha_gai.jpg'),
  (49, 'Gazpacho Andaluz', 8, 'Spanish cold soup made from tomatoes, peppers, cucumbers, onions, garlic, and bread, seasoned with olive oil, vinegar, and salt.', 2, 49, '/recipes/gazpacho_andaluz.jpg'),
  (50, 'Moussaka with Eggplant', 9, 'Greek casserole dish made with layers of eggplant, minced meat, and potatoes, topped with a creamy béchamel sauce.', 3, 50, '/recipes/moussaka_with_eggplant.jpg');



-- Insert data into RecipeTip table
INSERT INTO RecipeTip
  (recipe_id, tip_no, instructions)
VALUES
  -- Spaghetti Carbonara
  (1, 1, 'For a richer flavor, use pancetta instead of bacon in your carbonara.'),
  (1, 2, 'Add a splash of white wine to the sauce for extra depth of flavor.'),
  (1, 3, 'To prevent the eggs from scrambling, remove the pan from heat before adding them to the pasta.'),

  -- Margherita Pizza
  (2, 1, 'For an authentic touch, use fresh buffalo mozzarella cheese on your Margherita pizza.'),
  (2, 2, 'Drizzle a bit of extra-virgin olive oil over the pizza just before serving for extra flavor.'),
  (2, 3, 'Bake the pizza on a pizza stone for a crispier crust.'),

  -- Tacos al Pastor
  (3, 1, 'Marinate the pork in a blend of pineapple juice, achiote paste, and spices for at least 2 hours before grilling.'),
  (3, 2, 'Serve the tacos with diced onions, cilantro, and a squeeze of lime for freshness.'),
  (3, 3, 'Char the tortillas slightly over an open flame for added flavor.'),

  -- Sushi Rolls
  (4, 1, 'Use a bamboo sushi mat to roll the sushi tightly and evenly.'),
  (4, 2, 'Dip your fingers in water to prevent the rice from sticking to them while assembling the sushi rolls.'),
  (4, 3, 'Experiment with different fillings and sauces to create your own unique sushi rolls.'),

  -- Kung Pao Chicken
  (5, 1, 'For an extra kick, add more dried red chili peppers to your Kung Pao chicken.'),
  (5, 2, 'Roast the peanuts before adding them to the dish for a nuttier flavor and crunchier texture.'),
  (5, 3, 'Add a splash of rice vinegar to balance the flavors of the sauce.'),

  -- Coq au Vin
  (6, 1, 'Marinate the chicken in red wine and aromatics overnight for maximum flavor.'),
  (6, 2, 'Serve the Coq au Vin with crusty bread or buttered noodles to soak up the delicious sauce.'),
  (6, 3, 'Garnish with fresh parsley before serving for a pop of color.'),

  -- Chicken Tikka Masala
  (7, 1, 'Make your own garam masala spice blend for the freshest flavor in your Chicken Tikka Masala.'),
  (7, 2, 'For a creamier sauce, add a splash of heavy cream or coconut milk towards the end of cooking.'),
  (7, 3, 'Garnish with chopped cilantro and a drizzle of lemon juice before serving.'),

  -- Pad Thai
  (8, 1, 'Soak the rice noodles in warm water for about 30 minutes before stir-frying to soften them.'),
  (8, 2, 'Toss in some bean sprouts and crushed peanuts for added texture and crunchiness.'),
  (8, 3, 'Serve with lime wedges and extra chili flakes for those who like it extra spicy.'),

  -- Paella
  (9, 1, 'Use a wide, shallow pan (paellera) for even cooking and to achieve the traditional crispy rice layer at the bottom (socarrat).'),
  (9, 2, 'Add saffron threads to the broth for a rich, golden color and distinctive flavor.'),
  (9, 3, 'Garnish with lemon wedges and fresh parsley before serving for a burst of freshness.'),

  -- Greek Salad
  (10, 1, 'Use the freshest ingredients available, including ripe tomatoes, crisp cucumbers, and tangy feta cheese.'),
  (10, 2, 'Season the salad with dried oregano and drizzle with extra-virgin olive oil for authentic Greek flavor.'),
  (10, 3, 'Serve the salad chilled for maximum refreshment on a hot day.'),

  -- Feijoada
  (11, 1, 'Simmer the beans with smoked pork products like bacon, ham hocks, and sausage for maximum flavor.'),
  (11, 2, 'Serve with orange slices to cut through the richness of the dish and add a burst of freshness.'),
  (11, 3, 'Accompany with farofa (toasted cassava flour) and rice for a complete Brazilian meal.'),

  -- Kimchi
  (12, 1, 'Massage the salt and seasonings into the cabbage leaves to ensure even distribution of flavor.'),
  (12, 2, 'Ferment the kimchi at room temperature for 1-2 days before transferring it to the refrigerator for longer storage.'),
  (12, 3, 'Use a dedicated kimchi container or jar with an airtight lid to prevent odor transfer in your fridge.'),

  -- Falafel
  (13, 1, 'Soak the chickpeas overnight for better texture and easier blending.'),
  (13, 2, 'Add a pinch of baking soda to the falafel mixture to help them brown and crisp up during frying.'),
  (13, 3, 'Serve with tahini sauce, hummus, or tzatziki for dipping.'),

  -- Pho
  (14, 1, 'Simmer the broth for several hours to extract maximum flavor from the bones and spices.'),
  (14, 2, 'Serve with a side plate of fresh herbs, bean sprouts, lime wedges, and chili slices for garnish.'),
  (14, 3, 'Customize your pho with additional toppings like sliced beef, meatballs, or tripe.'),

  -- Kebab
  (15, 1, 'Marinate the meat in yogurt, garlic, and spices for at least a few hours, or overnight, for maximum flavor.'),
  (15, 2, 'Skewer the meat and vegetables separately to ensure even cooking.'),
  (15, 3, 'Serve the kebabs with pita bread, rice, or a salad, and a dollop of tzatziki sauce for dipping.'),

  -- Couscous
  (16, 1, 'Use equal parts couscous and boiling water, and let it sit covered for 5 minutes to steam and fluff up.'),
  (16, 2, 'Mix in dried fruits like raisins or apricots and toasted nuts like almonds or pine nuts for added sweetness and crunch.'),
  (16, 3, 'Drizzle with olive oil and lemon juice, and season with salt and pepper to taste before serving.'),

  -- Borscht
  (17, 1, 'For a richer flavor, roast the beets in the oven before adding them to the soup.'),
  (17, 2, 'Serve with a dollop of sour cream or a swirl of crème fraîche for added creaminess.'),
  (17, 3, 'Garnish with fresh dill and a squeeze of lemon juice before serving for a burst of freshness.'),

  -- Ceviche
  (18, 1, 'Use the freshest fish available, preferably sushi-grade, and marinate it in lime juice for at least 30 minutes before serving.'),
  (18, 2, 'Add diced avocado and mango for a tropical twist, or diced cucumber and jalapeño for a refreshing kick.'),
  (18, 3, 'Serve with tortilla chips or crispy plantain chips for scooping up the ceviche.'),

  -- Pavlova
  (19, 1, 'Use room temperature egg whites for maximum volume and stability when whipping.'),
  (19, 2, 'Add a teaspoon of cornstarch to the sugar when whipping the egg whites to help stabilize the meringue.'),
  (19, 3, 'Top with a medley of fresh berries and a drizzle of passionfruit or raspberry coulis for a vibrant finish.'),

  -- Swedish Meatballs
  (20, 1, 'For tender meatballs, soak the breadcrumbs in milk before adding them to the meat mixture.'),
  (20, 2, 'Brown the meatballs in butter before simmering them in the creamy sauce for added flavor.'),
  (20, 3, 'Serve with lingonberry jam and mashed potatoes for a traditional Swedish meal.'),

  -- Empanadas
  (21, 1, 'Make sure to seal the edges of the empanadas tightly to prevent filling from leaking during baking.'),
  (21, 2, 'Brush the tops of the empanadas with egg wash before baking for a golden, shiny finish.'),
  (21, 3, 'Serve with chimichurri sauce or salsa for dipping.'),

  -- Lasagna
  (22, 1, 'Make a large batch of sauce and freeze the leftovers for quick and easy lasagna-making in the future.'),
  (22, 2, 'Use no-boil lasagna noodles for convenience, or if using regular noodles, boil them until al dente before layering.'),
  (22, 3, 'Let the lasagna rest for 10-15 minutes after baking to set before slicing and serving.'),

  -- Enchiladas
  (23, 1, 'Lightly fry the tortillas in oil before filling and rolling them to make them more pliable and prevent tearing.'),
  (23, 2, 'Top the enchiladas with shredded cheese and bake until bubbly and golden brown.'),
  (23, 3, 'Serve with a dollop of sour cream and a sprinkle of chopped cilantro for garnish.'),

  -- Sushi Nigiri
  (24, 1, 'Use sushi-grade fish and slice it against the grain for the best texture and mouthfeel.'),
  (24, 2, 'Dip your fingers in water before shaping the rice to prevent sticking and ensure a smooth surface.'),
  (24, 3, 'Serve with soy sauce, pickled ginger, and wasabi on the side for dipping.'),

  -- Sweet and Sour Pork
  (25, 1, 'Coat the pork pieces in cornstarch before frying for extra crispiness.'),
  (25, 2, 'Make your own sweet and sour sauce with pineapple juice, vinegar, ketchup, and brown sugar for a fresher flavor.'),
  (25, 3, 'Garnish with sliced green onions and sesame seeds for added flavor and texture.'),

  -- Beef Bourguignon
  (26, 1, 'For a deeper flavor, marinate the beef overnight in red wine, garlic, and herbs before cooking.'),
  (26, 2, 'Serve the Beef Bourguignon with crusty bread or buttered noodles for soaking up the delicious sauce.'),
  (26, 3, 'Garnish with fresh parsley before serving for a pop of color.'),

  -- Chicken Curry
  (27, 1, 'Toast the spices in oil before adding the chicken and liquid for a more fragrant and flavorful curry.'),
  (27, 2, 'For a creamier curry, add a splash of coconut milk or heavy cream towards the end of cooking.'),
  (27, 3, 'Serve with steamed rice or naan bread for a complete meal.'),

  -- Tom Yum Soup
  (28, 1, 'Use fresh lemongrass, kaffir lime leaves, and galangal for the most authentic flavor in your Tom Yum Soup.'),
  (28, 2, 'Adjust the level of spiciness by adding more or fewer chili peppers and chili paste.'),
  (28, 3, 'Finish with a squeeze of lime juice and a sprinkle of chopped cilantro for freshness and brightness.'),

  -- Gazpacho
  (29, 1, 'Chill all the ingredients before blending to ensure a refreshing and cold soup.'),
  (29, 2, 'Adjust the consistency with more bread for a thicker gazpacho or more water for a lighter soup.'),
  (29, 3, 'Garnish with diced cucumber, red bell pepper, and croutons for added texture and color.'),

  -- Moussaka
  (30, 1, 'Salt the eggplant slices and let them sit for 30 minutes to draw out excess moisture before frying.'),
  (30, 2, 'Use a combination of ground lamb and beef for a richer flavor in your Moussaka.'),
  (30, 3, 'Allow the Moussaka to rest for at least 20 minutes before slicing to prevent it from falling apart.'),

  -- Pão de Queijo
  (31, 1, 'Use tapioca flour (also known as tapioca starch) for the authentic texture of Pão de Queijo.'),
  (31, 2, 'Mix the dough until smooth and elastic for light and airy Pão de Queijo.'),
  (31, 3, 'Serve warm for the best taste and texture.'),

  -- Bibimbap
  (32, 1, 'Cook the rice in a stone bowl (dolsot) for a crispy rice crust at the bottom, known as nurungji.'),
  (32, 2, 'Arrange the toppings in a colorful and visually appealing manner for a beautiful presentation.'),
  (32, 3, 'Drizzle with gochujang sauce and sesame oil before mixing for a burst of flavor.'),

  -- Tabbouleh
  (33, 1, 'Soak the bulgur in boiling water for 15-20 minutes, then drain and squeeze out any excess moisture before using.'),
  (33, 2, 'Use plenty of fresh herbs like parsley and mint for a vibrant and aromatic Tabbouleh.'),
  (33, 3, 'Dress with a generous amount of olive oil and lemon juice for a refreshing and tangy flavor.'),

  -- Pho Bo
  (34, 1, 'Simmer the beef bones and aromatics for several hours to develop a rich and flavorful broth.'),
  (34, 2, 'Blanch the rice noodles in hot water before adding them to the soup to prevent them from becoming mushy.'),
  (34, 3, 'Serve with a plate of fresh herbs, bean sprouts, lime wedges, and chili slices for garnish.'),

  -- Iskender Kebab
  (35, 1, 'Slice the meat thinly and grill it briefly for a smoky flavor and tender texture.'),
  (35, 2, 'Layer the meat over the pita bread and ladle the tomato sauce and yogurt over the top for maximum flavor.'),
  (35, 3, 'Garnish with melted butter and dried oregano before serving for an authentic touch.'),

  -- Tagine
  (36, 1, 'Use a traditional clay tagine pot for cooking to impart a unique flavor to the dish.'),
  (36, 2, 'Adjust the sweetness and tanginess of the dish by adding more or less dried fruit and preserved lemon.'),
  (36, 3, 'Serve with couscous or crusty bread for soaking up the flavorful sauce.'),

  -- Pelmeni
  (37, 1, 'Freeze the assembled pelmeni on a baking sheet before transferring them to a freezer bag for longer storage.'),
  (37, 2, 'Cook the pelmeni in boiling water until they float to the surface, then drain and serve with melted butter or sour cream.'),
  (37, 3, 'Sprinkle with chopped dill or parsley for a burst of freshness.'),

  -- Causa Rellena
  (38, 1, 'Chill the mashed potato mixture before assembling the causa for easier handling and shaping.'),
  (38, 2, 'Layer the filling ingredients evenly to ensure a balanced and flavorful causa.'),
  (38, 3, 'Garnish with sliced hard-boiled eggs, olives, and aji amarillo sauce for a colorful presentation.'),

  -- Divine Pavlova
  (39, 1, 'Add a pinch of cream of tartar or vinegar to the egg whites to stabilize the meringue and prevent it from deflating.'),
  (39, 2, 'Shape the pavlova into a nest-like structure to hold the whipped cream and fruit.'),
  (39, 3, 'Decorate with a variety of seasonal fruits and berries for a vibrant and visually appealing dessert.'),

  -- Nordic Swedish Meatballs
  (40, 1, 'For added richness, use a mixture of ground beef and pork in your meatballs.'),
  (40, 2, 'Brown the meatballs in butter for extra flavor before simmering them in the creamy sauce.'),
  (40, 3, 'Serve with lingonberry sauce and mashed potatoes for a classic Swedish meal.'),

  -- Milanesa
  (41, 1, 'Pound the meat thinly to ensure even cooking and a tender texture in your Milanesa.'),
  (41, 2, 'Dip the breaded cutlets in beaten egg and breadcrumbs twice for a thicker and crispier coating.'),
  (41, 3, 'Serve with lemon wedges and a sprinkle of salt for squeezing over the cutlets.'),

  -- Carbonnade Flamande
  (42, 1, 'Use a hearty Belgian beer like a Dubbel or a Tripel for braising the beef for an authentic flavor.'),
  (42, 2, 'Cook the stew low and slow to allow the flavors to meld together and the meat to become tender.'),
  (42, 3, 'Serve with crusty bread or fries for soaking up the delicious sauce.'),

  -- Chiles en Nogada
  (43, 1, 'Roast the poblano chiles over an open flame or under the broiler until charred, then steam them to loosen the skins for easy removal.'),
  (43, 2, 'Make the picadillo filling with a mixture of ground beef, pork, or a combination of both, seasoned with spices, fruits, and nuts.'),
  (43, 3, 'Top the stuffed chiles with the creamy walnut sauce and garnish with pomegranate seeds and chopped parsley for a festive presentation.'),

  -- Tempura
  (44, 1, 'Keep the batter ice cold and do not overmix to ensure a light and crispy tempura coating.'),
  (44, 2, 'Fry the tempura in small batches to maintain the oil temperature and prevent overcrowding in the fryer.'),
  (44, 3, 'Serve the tempura immediately after frying for the best texture and flavor.'),

  -- Mapo Tofu
  (45, 1, 'Use silken tofu for a softer texture in your Mapo Tofu, and firm tofu if you prefer a firmer texture.'),
  (45, 2, 'Adjust the level of spiciness by adding more or less chili peppers and Szechuan peppercorns.'),
  (45, 3, 'Garnish with chopped green onions and toasted sesame seeds before serving for extra flavor and crunch.'),

  -- Quiche Lorraine
  (46, 1, 'Pre-bake the pie crust before adding the filling to prevent it from becoming soggy.'),
  (46, 2, 'Use a combination of Gruyère and Emmental cheese for a classic Quiche Lorraine.'),
  (46, 3, 'Serve warm or at room temperature, sliced into wedges, for a delicious brunch or light dinner.'),

  -- Butter Chicken
  (47, 1, 'Marinate the chicken in yogurt, lemon juice, and spices for at least 30 minutes to tenderize and flavor the meat.'),
  (47, 2, 'Simmer the sauce gently to allow the flavors to meld together and the chicken to become tender and juicy.'),
  (47, 3, 'Garnish with a swirl of cream and chopped cilantro before serving for an extra touch of richness and freshness.'),

  -- Tom Kha Gai
  (48, 1, 'Use chicken thighs for a more flavorful and tender meat in your Tom Kha Gai soup.'),
  (48, 2, 'Add the coconut milk towards the end of cooking to prevent it from curdling and to preserve its creamy texture.'),
  (48, 3, 'Garnish with fresh cilantro and a squeeze of lime juice before serving for a burst of freshness.'),

  -- Gazpacho Andaluz
  (49, 1, 'Chill all the ingredients before blending to ensure a refreshing and cold soup.'),
  (49, 2, 'Adjust the consistency with more bread for a thicker gazpacho or more water for a lighter soup.'),
  (49, 3, 'Garnish with diced cucumber, red bell pepper, and croutons for added texture and color.'),

  -- Moussaka with Eggplant
  (50, 1, 'Salt the eggplant slices and let them sit for 30 minutes to draw out excess moisture before frying.'),
  (50, 2, 'Use a combination of ground lamb and beef for a richer flavor in your Moussaka.'),
  (50, 3, 'Allow the Moussaka to rest for at least 20 minutes before slicing to prevent it from falling apart.');




-- Insert data into RecipeStep table
INSERT INTO RecipeStep (recipe_id, step_no, description)
VALUES
  -- Spaghetti Carbonara
  (1, 1, 'Bring a large pot of salted water to a boil and cook the spaghetti according to package instructions until al dente.'),
  (1, 2, 'While the pasta is cooking, heat olive oil in a large skillet over medium heat.'),
  (1, 3, 'Add the pancetta or bacon to the skillet and cook until crispy, then remove from the pan and set aside.'),
  (1, 4, 'In a mixing bowl, whisk together the eggs, egg yolks, grated Parmesan cheese, and black pepper until well combined.'),
  (1, 5, 'Once the pasta is cooked, drain it, reserving a cup of pasta water, and immediately add it to the skillet with the pancetta.'),
  (1, 6, 'Remove the skillet from the heat and quickly pour the egg and cheese mixture over the hot pasta, tossing continuously to coat the pasta evenly.'),
  (1, 7, 'If the pasta seems too dry, add a splash of reserved pasta water to loosen the sauce.'),
  (1, 8, 'Serve immediately, garnished with additional grated Parmesan cheese and chopped parsley, if desired.'),

-- Margherita Pizza
  (2, 1, 'Preheat your oven to its highest temperature setting, preferably with a pizza stone inside if available.'),
  (2, 2, 'Roll out the pizza dough on a lightly floured surface into a circle of desired thickness.'),
  (2, 3, 'Transfer the rolled-out dough to a pizza peel or parchment paper.'),
  (2, 4, 'Spread the tomato sauce evenly over the surface of the dough, leaving a small border around the edges.'),
  (2, 5, 'Arrange the slices of fresh mozzarella cheese evenly over the sauce.'),
  (2, 6, 'Place the basil leaves on top of the cheese.'),
  (2, 7, 'Carefully transfer the pizza to the preheated oven and bake until the crust is golden brown and the cheese is bubbly and melted, about 8-10 minutes.'),
  (2, 8, 'Remove the pizza from the oven, slice, and serve hot.'),

-- Tacos al Pastor
  (3, 1, 'In a blender, combine the pineapple juice, orange juice, vinegar, garlic, achiote paste, and chipotle peppers. Blend until smooth to make the marinade.'),
  (3, 2, 'Place the sliced pork shoulder in a large resealable plastic bag and pour the marinade over it. Seal the bag and marinate in the refrigerator for at least 4 hours, preferably overnight.'),
  (3, 3, 'Preheat the grill to medium-high heat. Remove the pork from the marinade and discard the excess marinade.'),
  (3, 4, 'Thread the pork slices onto skewers and grill for 5-7 minutes on each side, until cooked through and slightly charred.'),
  (3, 5, 'While the pork is grilling, warm the tortillas on the grill for about 30 seconds on each side.'),
  (3, 6, 'Remove the pork from the skewers and place it in the warm tortillas. Top with chopped onion, cilantro, and a squeeze of lime juice.'),
  (3, 7, 'Serve the tacos al pastor hot, with additional lime wedges and salsa on the side.'),

-- Sushi Rolls
  (4, 1, 'Prepare sushi rice according to package instructions, then spread it evenly over a sheet of nori on a bamboo rolling mat.'),
  (4, 2, 'Arrange the desired fillings, such as sliced fish, avocado, cucumber, or crab sticks, in a line across the center of the rice.'),
  (4, 3, 'Using the bamboo mat to help you, roll the sushi tightly, starting from the edge closest to you and rolling away from you.'),
  (4, 4, 'Use a sharp knife to slice the sushi roll into individual pieces, wiping the knife clean between cuts to ensure clean slices.'),
  (4, 5, 'Repeat the process with the remaining rice and fillings until all ingredients are used up.'),
  (4, 6, 'Serve the sushi rolls with soy sauce, wasabi, and pickled ginger on the side for dipping.'),

-- Kung Pao Chicken
  (5, 1, 'Marinate the chicken pieces in soy sauce, rice wine, and cornstarch for about 20 minutes.'),
  (5, 2, 'Heat oil in a wok or skillet over high heat. Add the dried chili peppers and Sichuan peppercorns, and stir-fry until fragrant, about 30 seconds.'),
  (5, 3, 'Add the marinated chicken to the wok and stir-fry until browned and cooked through, about 4-5 minutes.'),
  (5, 4, 'Add the garlic, ginger, and green onions to the wok and stir-fry for another 1-2 minutes, until fragrant.'),
  (5, 5, 'Pour in the sauce mixture and stir well to coat the chicken and vegetables.'),
  (5, 6, 'Add the peanuts to the wok and stir-fry for another 1-2 minutes, until everything is heated through and well combined.'),
  (5, 7, 'Remove the wok from the heat and transfer the Kung Pao chicken to a serving dish.'),
  (5, 8, 'Garnish with additional sliced green onions and serve hot with steamed rice.'),

-- Coq au Vin
  (6, 1, 'Preheat the oven to 325°F (160°C).'),
  (6, 2, 'Season the chicken pieces with salt and pepper.'),
  (6, 3, 'In a large Dutch oven, heat the olive oil over medium-high heat.'),
  (6, 4, 'Add the bacon and cook until crisp, then transfer to a plate and set aside.'),
  (6, 5, 'Add the chicken pieces to the Dutch oven and cook until browned on all sides, then transfer to the plate with the bacon.'),
  (6, 6, 'Add the onions, carrots, and mushrooms to the Dutch oven and cook until softened, about 5 minutes.'),
  (6, 7, 'Add the garlic and tomato paste and cook for another 1-2 minutes, until fragrant.'),
  (6, 8, 'Return the chicken and bacon to the Dutch oven, then add the wine, chicken broth, thyme, and bay leaves.'),
  (6, 9, 'Bring the mixture to a simmer, then cover and transfer to the preheated oven.'),
  (6, 10, 'Bake for 1.5 to 2 hours, or until the chicken is tender and cooked through.'),
  (6, 11, 'Remove the Dutch oven from the oven and discard the thyme sprigs and bay leaves.'),
  (6, 12, 'Serve the Coq au Vin hot, garnished with chopped parsley, with crusty bread or mashed potatoes on the side.'),

-- Chicken Tikka Masala
  (7, 1, 'In a large bowl, combine the yogurt, lemon juice, ginger, garlic, garam masala, turmeric, cumin, paprika, and cayenne pepper.'),
  (7, 2, 'Add the chicken pieces to the bowl and toss until evenly coated in the marinade.'),
  (7, 3, 'Cover the bowl and refrigerate for at least 1 hour, or overnight for best results.'),
  (7, 4, 'Preheat the broiler to high heat.'),
  (7, 5, 'Thread the marinated chicken pieces onto skewers and place them on a broiler pan or baking sheet.'),
  (7, 6, 'Broil the chicken skewers for 5-7 minutes on each side, or until cooked through and slightly charred.'),
  (7, 7, 'Meanwhile, in a large skillet, heat the oil over medium heat.'),
  (7, 8, 'Add the onions and cook until softened and translucent, about 5 minutes.'),
  (7, 9, 'Stir in the tomato sauce, cream, and fenugreek leaves, and bring to a simmer.'),
  (7, 10, 'Add the cooked chicken skewers to the skillet and simmer for another 10-15 minutes, stirring occasionally.'),
  (7, 11, 'Season with salt and pepper to taste, and garnish with chopped cilantro before serving.'),

-- Pad Thai
  (8, 1, 'Soak the rice noodles in warm water for about 30 minutes, or until soft but still slightly firm.'),
  (8, 2, 'In a small bowl, combine the tamarind paste, fish sauce, soy sauce, and sugar to make the Pad Thai sauce.'),
  (8, 3, 'Heat the oil in a large skillet or wok over medium-high heat.'),
  (8, 4, 'Add the garlic and tofu, and stir-fry until golden brown, about 3-4 minutes.'),
  (8, 5, 'Add the shrimp and stir-fry until pink and cooked through, about 2-3 minutes.'),
  (8, 6, 'Push the shrimp and tofu to one side of the skillet, and crack the eggs into the empty space.'),
  (8, 7, 'Scramble the eggs until cooked, then mix them with the shrimp and tofu.'),
  (8, 8, 'Add the drained rice noodles to the skillet, along with the Pad Thai sauce.'),
  (8, 9, 'Toss everything together until well combined and heated through, about 2-3 minutes.'),
  (8, 10, 'Stir in the bean sprouts, green onions, and peanuts, then remove the skillet from the heat.'),
  (8, 11, 'Serve the Pad Thai hot, garnished with additional peanuts, lime wedges, and cilantro, if desired.'),

-- Paella
  (9, 1, 'In a large paella pan or skillet, heat the olive oil over medium-high heat.'),
  (9, 2, 'Add the chorizo and cook until browned, then remove from the pan and set aside.'),
  (9, 3, 'Season the chicken and shrimp with salt and pepper, then add them to the pan and cook until browned on all sides, about 5-7 minutes.'),
  (9, 4, 'Remove the chicken and shrimp from the pan and set aside.'),
  (9, 5, 'Add the onion, bell pepper, and garlic to the pan, and cook until softened, about 5 minutes.'),
  (9, 6, 'Stir in the rice, saffron, paprika, and tomato paste, and cook for another 2-3 minutes, until the rice is coated in the spices.'),
  (9, 7, 'Pour in the chicken broth and bring to a simmer, then reduce the heat to low and let the mixture cook for about 15 minutes, or until the rice is almost tender and most of the liquid has been absorbed.'),
  (9, 8, 'Return the chicken and shrimp to the pan, along with the chorizo, peas, and diced tomatoes.'),
  (9, 9, 'Continue to cook for another 5-7 minutes, or until the chicken and shrimp are fully cooked and the rice is tender, adding more broth if necessary.'),
  (9, 10, 'Garnish the paella with chopped parsley and lemon wedges before serving.'),

-- Greek Salad
  (10, 1, 'In a large salad bowl, combine the chopped tomatoes, cucumbers, red onions, bell peppers, and olives.'),
  (10, 2, 'Crumble the feta cheese over the top of the salad.'),
  (10, 3, 'In a small bowl, whisk together the olive oil, red wine vinegar, oregano, salt, and pepper to make the dressing.'),
  (10, 4, 'Pour the dressing over the salad and toss gently to coat all the ingredients evenly.'),
  (10, 5, 'Garnish the Greek salad with fresh oregano leaves and serve immediately.'),

-- Feijoada
  (11, 1, 'In a large pot or Dutch oven, heat the oil over medium heat.'),
  (11, 2, 'Add the bacon, sausage, and pork shoulder to the pot, and cook until browned on all sides, about 5-7 minutes.'),
  (11, 3, 'Stir in the onions, garlic, and bay leaves, and cook until the onions are softened and translucent, about 5 minutes.'),
  (11, 4, 'Add the black beans, chicken broth, and orange zest to the pot, and bring to a simmer.'),
  (11, 5, 'Reduce the heat to low, cover, and let the feijoada simmer gently for about 2 hours, stirring occasionally, until the meat is tender and the flavors have melded together.'),
  (11, 6, 'Once the feijoada is cooked, remove the bay leaves and discard them.'),
  (11, 7, 'Season the feijoada with salt and pepper to taste, and serve hot, garnished with chopped parsley, orange slices, and farofa on the side.'),

-- Kimchi
  (12, 1, 'Cut the cabbage into quarters and remove the core.'),
  (12, 2, 'In a large bowl, dissolve the salt in water to create a brine.'),
  (12, 3, 'Submerge the cabbage in the brine, cover, and let it sit at room temperature for 2-3 hours, flipping occasionally.'),
  (12, 4, 'Rinse the cabbage under cold water to remove excess salt, then drain and set aside.'),
  (12, 5, 'In a blender, combine the garlic, ginger, fish sauce, sugar, and Korean red pepper flakes to make the kimchi paste.'),
  (12, 6, 'Rub the paste all over the cabbage leaves, making sure to coat them evenly.'),
  (12, 7, 'Place the cabbage in a clean jar or fermentation crock, pressing down firmly to remove any air bubbles.'),
  (12, 8, 'Cover the jar loosely and let it ferment at room temperature for 1-5 days, depending on your preference.'),
  (12, 9, 'Once fermented, store the kimchi in the refrigerator for up to several months.'),

-- Falafel
  (13, 1, 'In a food processor, combine the chickpeas, onion, garlic, parsley, cilantro, cumin, coriander, salt, and pepper.'),
  (13, 2, 'Pulse the mixture until it forms a coarse paste, then transfer it to a bowl.'),
  (13, 3, 'Stir in the baking powder and flour until well combined, then cover and refrigerate the mixture for at least 1 hour.'),
  (13, 4, 'Form the falafel mixture into small balls or patties, about 1.5 inches in diameter.'),
  (13, 5, 'In a large skillet, heat the oil over medium-high heat until hot but not smoking.'),
  (13, 6, 'Carefully add the falafel balls to the skillet and cook until golden brown and crispy on all sides, about 3-4 minutes per side.'),
  (13, 7, 'Transfer the cooked falafel to a paper towel-lined plate to drain off any excess oil.'),
  (13, 8, 'Serve the falafel hot, with tahini sauce, hummus, or tzatziki for dipping.'),

-- Pho
  (14, 1, 'In a large pot, combine the beef bones, water, onion, ginger, star anise, cinnamon, cloves, and fish sauce.'),
  (14, 2, 'Bring the mixture to a boil over high heat, then reduce the heat to low and let it simmer, uncovered, for at least 1 hour, or up to 4 hours for maximum flavor.'),
  (14, 3, 'Meanwhile, prepare the rice noodles according to the package instructions, then drain and set aside.'),
  (14, 4, 'Strain the broth through a fine mesh sieve into a clean pot, discarding the solids.'),
  (14, 5, 'Return the strained broth to the stove and bring it to a simmer over medium heat.'),
  (14, 6, 'Divide the cooked noodles among serving bowls, then top with thinly sliced beef, bean sprouts, sliced onion, and chopped cilantro.'),
  (14, 7, 'Carefully ladle the hot broth over the top of the ingredients in each bowl, then serve immediately, with lime wedges, hoisin sauce, and sriracha on the side.'),
  
-- Kebab
  (15, 1, 'In a bowl, combine the yogurt, lemon juice, olive oil, garlic, paprika, cumin, coriander, salt, and pepper to make the marinade.'),
  (15, 2, 'Add the cubed meat to the marinade, cover, and refrigerate for at least 1 hour, or overnight for best results.'),
  (15, 3, 'Thread the marinated meat onto skewers, alternating with pieces of onion, bell pepper, and tomato if desired.'),
  (15, 4, 'Preheat the grill to medium-high heat, then grill the kebabs for 10-12 minutes, turning occasionally, until the meat is cooked through and slightly charred.'),
  (15, 5, 'Remove the kebabs from the grill and let them rest for a few minutes before serving.'),
  
-- Couscous
  (16, 1, 'In a large bowl, combine the couscous, salt, and olive oil.'),
  (16, 2, 'Pour the boiling water over the couscous, cover the bowl with a plate or plastic wrap, and let it sit for 5 minutes, or until the couscous has absorbed all the water.'),
  (16, 3, 'Fluff the couscous with a fork to separate the grains, then stir in the lemon zest, lemon juice, chopped parsley, and chopped mint.'),
  (16, 4, 'Season the couscous with additional salt and pepper to taste, if desired, then serve warm or at room temperature.'),
  
-- Borscht
  (17, 1, 'In a large pot, heat the oil over medium heat.'),
  (17, 2, 'Add the onions, carrots, and celery, and cook until softened, about 5 minutes.'),
  (17, 3, 'Stir in the beets, cabbage, potatoes, tomato paste, and vegetable broth, and bring to a boil.'),
  (17, 4, 'Reduce the heat to low, cover, and let the soup simmer for about 30 minutes, or until the vegetables are tender.'),
  (17, 5, 'Stir in the lemon juice, sugar, salt, and pepper to taste, then remove the soup from the heat.'),
  (17, 6, 'Serve the borscht hot, garnished with a dollop of sour cream and fresh dill, if desired.'),
  
-- Ceviche
  (18, 1, 'In a large bowl, combine the diced fish, lime juice, lemon juice, and orange juice.'),
  (18, 2, 'Cover the bowl and refrigerate for at least 30 minutes, or until the fish is opaque and "cooked" through by the acidity of the citrus juices.'),
  (18, 3, 'Stir in the diced onion, diced tomato, diced cucumber, diced avocado, chopped cilantro, and sliced chili peppers, if using.'),
  (18, 4, 'Season the ceviche with salt and pepper to taste, then serve immediately, with tortilla chips or lettuce leaves for scooping.'),
  
-- Pavlova
  (19, 1, 'Preheat the oven to 300°F (150°C) and line a baking sheet with parchment paper.'),
  (19, 2, 'In a large bowl, beat the egg whites with an electric mixer until stiff peaks form.'),
  (19, 3, 'Gradually add the sugar, one tablespoon at a time, beating well after each addition, until the meringue is glossy and holds stiff peaks.'),
  (19, 4, 'Gently fold in the cornstarch, white vinegar, and vanilla extract until just combined.'),
  (19, 5, 'Spoon the meringue onto the prepared baking sheet, forming a large circle or oval shape with slightly raised edges.'),
  (19, 6, 'Transfer the pavlova to the oven and immediately reduce the temperature to 250°F (120°C).'),
  (19, 7, 'Bake the pavlova for 1-1.5 hours, or until the outside is dry and crisp but the inside is still soft and marshmallow-like.'),
  (19, 8, 'Turn off the oven and let the pavlova cool completely inside the oven with the door slightly ajar.'),
  (19, 9, 'Once cooled, transfer the pavlova to a serving platter and top with whipped cream and fresh fruit.'),
  
-- Swedish Meatballs
  (20, 1, 'In a large bowl, combine the ground beef, ground pork, breadcrumbs, egg, milk, grated onion, salt, pepper, and allspice.'),
  (20, 2, 'Mix the ingredients together until well combined, then shape the mixture into small meatballs, about 1 inch in diameter.'),
  (20, 3, 'In a large skillet, heat the butter over medium heat until melted and foamy.'),
  (20, 4, 'Add the meatballs to the skillet and cook until browned on all sides and cooked through, about 8-10 minutes.'),
  (20, 5, 'Transfer the cooked meatballs to a plate and cover with foil to keep warm while you make the gravy.'),
  (20, 6, 'To make the gravy, melt the butter in the same skillet over medium heat.'),
  (20, 7, 'Whisk in the flour and cook, stirring constantly, for 1-2 minutes, or until golden brown.'),
  (20, 8, 'Gradually whisk in the beef broth, scraping up any browned bits from the bottom of the skillet.'),
  (20, 9, 'Simmer the gravy for 2-3 minutes, or until thickened, then season with salt, pepper, and a pinch of nutmeg, if desired.'),
  (20, 10, 'Return the meatballs to the skillet and toss to coat them in the gravy, then simmer for another 2-3 minutes to heat through.'),
  (20, 11, 'Serve the Swedish meatballs hot, garnished with chopped parsley, alongside lingonberry sauce and mashed potatoes.'),
  
-- Empanadas
  (21, 1, 'In a large bowl, combine the flour, salt, and baking powder.'),
  (21, 2, 'Cut the butter into the flour mixture using a pastry cutter or your fingers, until the mixture resembles coarse crumbs.'),
  (21, 3, 'Gradually add the water, stirring with a fork, until a dough forms.'),
  (21, 4, 'Turn the dough out onto a floured surface and knead briefly until smooth.'),
  (21, 5, 'Divide the dough into small balls, then roll each ball out into a circle about 1/8 inch thick.'),
  (21, 6, 'Place a spoonful of filling in the center of each dough circle, then fold the dough over to enclose the filling, pressing the edges together firmly to seal.'),
  (21, 7, 'Crimp the edges of the empanadas with a fork to seal them further, then transfer them to a baking sheet lined with parchment paper.'),
  (21, 8, 'Brush the tops of the empanadas with beaten egg, then bake in the preheated oven for 20-25 minutes, or until golden brown and crisp.'),
  
-- Lasagna
  (22, 1, 'Preheat the oven to 375°F (190°C) and grease a 9x13-inch baking dish with cooking spray.'),
  (22, 2, 'In a large skillet, heat the olive oil over medium heat.'),
  (22, 3, 'Add the ground beef and Italian sausage to the skillet, and cook until browned and cooked through, breaking up the meat with a spoon as it cooks.'),
  (22, 4, 'Stir in the onion, garlic, oregano, basil, salt, and pepper, and cook for another 2-3 minutes, or until the onion is softened and translucent.'),
  (22, 5, 'Add the tomato paste and diced tomatoes to the skillet, and simmer for 10-15 minutes, or until the sauce has thickened slightly.'),
  (22, 6, 'Meanwhile, cook the lasagna noodles according to the package instructions, then drain and set aside.'),
  (22, 7, 'Spread a thin layer of the meat sauce in the bottom of the prepared baking dish, then top with a layer of lasagna noodles.'),
  (22, 8, 'Repeat the layers of meat sauce and noodles, ending with a layer of meat sauce on top.'),
  (22, 9, 'Sprinkle the shredded mozzarella and grated Parmesan cheese evenly over the top of the lasagna.'),
  (22, 10, 'Cover the baking dish with foil and bake in the preheated oven for 30 minutes.'),
  (22, 11, 'Remove the foil and bake for an additional 10-15 minutes, or until the cheese is melted and bubbly and the edges are golden brown.'),
  (22, 12, 'Let the lasagna cool for 10-15 minutes before slicing and serving.'),
  
-- Enchiladas
  (23, 1, 'Preheat the oven to 375°F (190°C) and grease a 9x13-inch baking dish with cooking spray.'),
  (23, 2, 'In a large skillet, heat the oil over medium heat.'),
  (23, 3, 'Add the onion and garlic to the skillet, and cook until softened, about 5 minutes.'),
  (23, 4, 'Stir in the chili powder, cumin, oregano, salt, and pepper, and cook for another 1-2 minutes, or until fragrant.'),
  (23, 5, 'Add the shredded chicken and diced green chilies to the skillet, and cook for 2-3 minutes, or until heated through.'),
  (23, 6, 'Pour 1/2 cup of the enchilada sauce into the bottom of the prepared baking dish, spreading it out evenly.'),
  (23, 7, 'Place a spoonful of the chicken mixture in the center of each tortilla, then roll them up tightly and place them seam-side down in the baking dish.'),
  (23, 8, 'Pour the remaining enchilada sauce over the top of the rolled tortillas, spreading it out evenly.'),
  (23, 9, 'Sprinkle the shredded cheese over the top of the enchiladas, then cover the baking dish with foil.'),
  (23, 10, 'Bake in the preheated oven for 20 minutes, then remove the foil and bake for an additional 10 minutes, or until the cheese is melted and bubbly.'),
  (23, 11, 'Serve the enchiladas hot, garnished with chopped cilantro, diced avocado, and sour cream, if desired.'),
  
-- Sushi Nigiri
  (24, 1, 'Cook the sushi rice according to the package instructions, then let it cool slightly.'),
  (24, 2, 'Using wet hands, shape the rice into small oblong or oval-shaped mounds, about 2 tablespoons each, and place them on a plate or cutting board.'),
  (24, 3, 'Slice the fish into thin strips or pieces that are slightly longer than the rice mounds.'),
  (24, 4, 'Gently press a piece of fish onto each mound of rice, using your fingers to shape and mold the rice around the fish.'),
  (24, 5, 'Serve the sushi nigiri immediately, with soy sauce, wasabi, and pickled ginger on the side.'),
  
-- Sweet and Sour Pork
  (25, 1, 'In a large bowl, whisk together the egg, soy sauce, cornstarch, and flour until smooth.'),
  (25, 2, 'Add the diced pork to the bowl and toss until evenly coated in the batter.'),
  (25, 3, 'In a large skillet or wok, heat the vegetable oil over medium-high heat.'),
  (25, 4, 'Carefully add the battered pork to the hot oil, in batches if necessary, and fry until golden brown and crispy, about 3-4 minutes per side.'),
  (25, 5, 'Transfer the cooked pork to a paper towel-lined plate to drain off any excess oil.'),
  (25, 6, 'In a separate skillet or saucepan, combine the pineapple juice, vinegar, ketchup, brown sugar, soy sauce, and cornstarch.'),
  (25, 7, 'Bring the mixture to a simmer over medium heat, stirring constantly, until thickened and bubbly.'),
  (25, 8, 'Add the cooked pork, bell pepper, pineapple chunks, and onion to the skillet, and toss to coat everything in the sauce.'),
  (25, 9, 'Continue to cook for another 2-3 minutes, or until the pork is heated through and the sauce is thick and glossy.'),
  (25, 10, 'Serve the sweet and sour pork hot, over steamed rice, garnished with sliced green onions.'),
  
-- Beef Bourguignon
  (26, 1, 'Preheat the oven to 325°F (160°C).'),
  (26, 2, 'In a large Dutch oven or oven-safe pot, heat the olive oil over medium-high heat.'),
  (26, 3, 'Season the beef chunks with salt and pepper, then add them to the pot in batches and brown them on all sides, about 4-5 minutes per batch.'),
  (26, 4, 'Transfer the browned beef to a plate and set aside.'),
  (26, 5, 'Add the diced bacon to the pot and cook until crispy, about 5 minutes.'),
  (26, 6, 'Stir in the onion, carrots, and garlic, and cook for 5-7 minutes, or until softened.'),
  (26, 7, 'Return the beef to the pot, along with any accumulated juices, and sprinkle the flour over the top.'),
  (26, 8, 'Cook, stirring constantly, for 1-2 minutes, or until the flour is lightly browned.'),
  (26, 9, 'Pour in the red wine and beef broth, stirring to scrape up any browned bits from the bottom of the pot.'),
  (26, 10, 'Add the tomato paste, thyme, bay leaf, and mushrooms, and bring the mixture to a simmer.'),
  (26, 11, 'Cover the pot with a lid and transfer it to the preheated oven.'),
  (26, 12, 'Braise the beef bourguignon in the oven for 2.5-3 hours, or until the beef is tender and the sauce has thickened.'),
  (26, 13, 'Remove the pot from the oven and discard the thyme sprigs and bay leaf.'),
  (26, 14, 'Serve the beef bourguignon hot, garnished with chopped parsley, alongside mashed potatoes, noodles, or crusty bread for soaking up the sauce.'),
  
-- Chicken Curry
  (27, 1, 'In a large skillet or saucepan, heat the oil over medium heat.'),
  (27, 2, 'Add the onion, garlic, ginger, and chili peppers to the skillet, and cook for 5-7 minutes, or until softened and fragrant.'),
  (27, 3, 'Stir in the curry powder, turmeric, coriander, cumin, and paprika, and cook for another 1-2 minutes, or until toasted and aromatic.'),
  (27, 4, 'Add the diced chicken to the skillet and cook until browned on all sides, about 5-7 minutes.'),
  (27, 5, 'Pour in the coconut milk and chicken broth, stirring to combine.'),
  (27, 6, 'Bring the mixture to a simmer, then reduce the heat to low and let it simmer gently for 20-25 minutes, or until the chicken is cooked through and the sauce has thickened slightly.'),
  (27, 7, 'Stir in the sugar, lime juice, and fish sauce, and season with salt and pepper to taste.'),
  (27, 8, 'Serve the chicken curry hot, garnished with chopped cilantro, alongside steamed rice or naan bread for soaking up the sauce.'),
  
-- Tom Yum Soup
  (28, 1, 'In a large pot, combine the chicken broth, lemongrass, kaffir lime leaves, galangal, and chili peppers.'),
  (28, 2, 'Bring the mixture to a boil over high heat, then reduce the heat to low and let it simmer for 10-15 minutes, or until the flavors have infused the broth.'),
  (28, 3, 'Stir in the mushrooms, cherry tomatoes, and shrimp, and cook for 2-3 minutes, or until the shrimp are pink and cooked through.'),
  (28, 4, 'Add the fish sauce, lime juice, and sugar to the pot, and stir to combine.'),
  (28, 5, 'Taste the soup and adjust the seasoning with more fish sauce, lime juice, or sugar as needed.'),
  (28, 6, 'Remove the soup from the heat and stir in the chopped cilantro and sliced green onions.'),
  (28, 7, 'Serve the tom yum soup hot, garnished with additional cilantro and lime wedges, if desired.'),
  
-- Gazpacho
  (29, 1, 'In a blender, combine the tomatoes, peppers, cucumbers, onions, garlic, and bread, and blend until smooth.'),
  (29, 2, 'With the blender running, gradually add the olive oil and vinegar until emulsified and well combined.'),
  (29, 3, 'Season the gazpacho with salt and pepper to taste, then transfer it to a large bowl and refrigerate for at least 1 hour, or until well chilled.'),
  (29, 4, 'Serve the gazpacho cold, garnished with chopped herbs, diced vegetables, and a drizzle of olive oil, if desired.'),
  
-- Moussaka
  (30, 1, 'Preheat the oven to 375°F (190°C) and grease a 9x13-inch baking dish with cooking spray.'),
  (30, 2, 'Peel the eggplants and slice them into 1/4-inch rounds.'),
  (30, 3, 'Place the eggplant slices on a baking sheet lined with parchment paper, brush them with olive oil, and sprinkle with salt and pepper.'),
  (30, 4, 'Roast the eggplant in the preheated oven for 20-25 minutes, or until tender and lightly browned, flipping once halfway through.'),
  (30, 5, 'Meanwhile, in a large skillet, heat the olive oil over medium heat.'),
  (30, 6, 'Add the ground lamb or beef to the skillet and cook until browned, breaking up the meat with a spoon as it cooks.'),
  (30, 7, 'Stir in the onion, garlic, oregano, cinnamon, salt, and pepper, and cook for another 5-7 minutes, or until the onion is softened and translucent.'),
  (30, 8, 'Stir in the tomato paste and diced tomatoes, and simmer for 10-15 minutes, or until the sauce has thickened slightly.'),
  (30, 9, 'In a separate saucepan, melt the butter over medium heat.'),
  (30, 10, 'Whisk in the flour to form a roux, then gradually whisk in the milk until smooth and thickened.'),
  (30, 11, 'Stir in the nutmeg, salt, and pepper, and cook for another 1-2 minutes, or until the sauce is creamy and velvety.'),
  (30, 12, 'To assemble the moussaka, spread half of the eggplant slices in the bottom of the prepared baking dish.'),
  (30, 13, 'Top the eggplant with half of the meat sauce, spreading it out evenly.'),
  (30, 14, 'Repeat the layers with the remaining eggplant slices and meat sauce, then pour the béchamel sauce over the top.'),
  (30, 15, 'Smooth the sauce out with a spatula, then sprinkle the grated Parmesan cheese over the top.'),
  (30, 16, 'Bake the moussaka in the preheated oven for 45-50 minutes, or until golden brown and bubbling around the edges.'),
  (30, 17, 'Let the moussaka cool for 10-15 minutes before slicing and serving.'),
  
-- Pão de Queijo
  (31, 1, 'Preheat the oven to 375°F (190°C) and grease a mini muffin tin with cooking spray.'),
  (31, 2, 'In a medium saucepan, combine the milk, oil, and salt, and bring to a gentle boil over medium heat.'),
  (31, 3, 'Remove the saucepan from the heat and stir in the tapioca flour until well combined.'),
  (31, 4, 'Let the mixture cool for a few minutes, then stir in the beaten eggs and grated cheese until smooth.'),
  (31, 5, 'Spoon the batter into the prepared muffin tin, filling each cup almost to the top.'),
  (31, 6, 'Bake the pão de queijo in the preheated oven for 15-20 minutes, or until puffed up and lightly golden brown.'),
  (31, 7, 'Remove the pão de queijo from the oven and let them cool in the pan for a few minutes before transferring them to a wire rack to cool completely.'),
  (31, 8, 'Serve the pão de queijo warm or at room temperature, as they are or with your favorite dipping sauce.'),
  
-- Bibimbap
  (32, 1, 'Cook the rice according to package instructions until tender and fluffy.'),
  (32, 2, 'While the rice is cooking, prepare the vegetables. Julienne the carrots and cucumber into thin matchstick-like strips. Slice the mushrooms and sauté them in a lightly oiled skillet until tender. Blanch the spinach in boiling water for 30 seconds, then drain and squeeze out excess water. Season the vegetables with salt and pepper to taste.'),
  (32, 3, 'Heat a little oil in a skillet over medium heat and fry the eggs until the whites are set but the yolks are still runny. Season with salt and pepper.'),
  (32, 4, 'Divide the cooked rice among serving bowls. Arrange the cooked vegetables and fried egg on top of the rice, placing each type of vegetable in a separate section of the bowl for visual appeal.'),
  (32, 5, 'Serve the bibimbap immediately with a dollop of gochujang (Korean chili paste) on top. Instruct diners to mix everything together thoroughly before eating to evenly distribute the flavors.'),

-- Tabbouleh
  (33, 1, 'Place the bulgur wheat in a large bowl and cover it with boiling water. Let it sit for about 30 minutes, or until softened and most of the water has been absorbed.'),
  (33, 2, 'Once the bulgur is ready, fluff it with a fork and let it cool to room temperature.'),
  (33, 3, 'Add the chopped parsley, diced tomatoes, sliced green onions, chopped mint, and finely minced garlic to the bowl with the bulgur.'),
  (33, 4, 'Drizzle the olive oil and lemon juice over the salad, then season with salt and pepper to taste.'),
  (33, 5, 'Toss the tabbouleh gently to combine all the ingredients and coat them evenly with the dressing.'),
  (33, 6, 'Cover the tabbouleh and refrigerate it for at least 1 hour to allow the flavors to meld before serving.'),

-- Pho Bo
  (34, 1, 'In a large pot, combine the beef bones, water, onion, ginger, star anise, cloves, cinnamon stick, and fish sauce.'),
  (34, 2, 'Bring the pot to a boil over high heat, then reduce the heat to low and simmer, uncovered, for 2-3 hours, skimming off any impurities that rise to the surface.'),
  (34, 3, 'After simmering, remove the beef bones and spices from the broth using a slotted spoon or fine-mesh strainer, discarding them.'),
  (34, 4, 'Strain the broth through a fine-mesh strainer lined with cheesecloth to remove any remaining solids and clarify the broth. Return the broth to the pot and keep it warm over low heat.'),
  (34, 5, 'While the broth is simmering, prepare the rice noodles according to the package instructions. Drain and rinse the noodles under cold water to stop the cooking process, then set them aside.'),
  (34, 6, 'Thinly slice the cooked beef against the grain and set it aside.'),
  (34, 7, 'Divide the cooked rice noodles among serving bowls. Top each bowl with a few slices of raw beef and thinly sliced onions.'),
  (34, 8, 'Ladle the hot broth over the noodles and beef, ensuring that the beef is fully submerged in the hot broth to cook it.'),
  (34, 9, 'Serve the pho bo immediately, accompanied by plates of fresh herbs, bean sprouts, lime wedges, and sliced chili peppers for diners to customize their bowls to their liking.'),

-- Iskender Kebab
  (35, 1, 'Preheat the oven to 400°F (200°C).'),
  (35, 2, 'Slice the cooked lamb or beef into thin strips and set it aside.'),
  (35, 3, 'Arrange the slices of pita bread in a single layer on a baking sheet and toast them in the preheated oven for 5-7 minutes, or until lightly golden and crisp.'),
  (35, 4, 'While the pita bread is toasting, prepare the tomato sauce. In a saucepan, heat the butter over medium heat and sauté the minced garlic until fragrant.'),
  (35, 5, 'Stir in the tomato paste and paprika, cooking for another 2-3 minutes to develop the flavors.'),
  (35, 6, 'Add the water, salt, and pepper to the saucepan, stirring well to combine. Simmer the tomato sauce for 5-7 minutes, or until slightly thickened.'),
  (35, 7, 'Remove the toasted pita bread from the oven and arrange the slices on serving plates.'),
  (35, 8, 'Top the pita bread with the sliced meat and ladle the hot tomato sauce over the meat and bread, allowing it to soak in.'),
  (35, 9, 'Drizzle the yogurt over the top of the dish, then finish with a sprinkle of chopped parsley and a drizzle of melted butter, if desired.'),
  (35, 10, 'Serve the Iskender kebab immediately, accompanied by additional yogurt and tomato sauce on the side.'),

-- Tagine
  (36, 1, 'Preheat the oven to 325°F (160°C).'),
  (36, 2, 'In a tagine or large ovenproof skillet, heat the olive oil over medium heat. Add the diced onion and cook until softened and translucent.'),
  (36, 3, 'Add the diced lamb or beef to the skillet and cook until browned on all sides.'),
  (36, 4, 'Stir in the minced garlic, ground ginger, ground cumin, ground coriander, ground cinnamon, saffron threads, and chopped cilantro, cooking for another 1-2 minutes to toast the spices and garlic.'),
  (36, 5, 'Add the diced tomatoes, dried apricots, pitted green olives, and chicken broth to the skillet, stirring well to combine.'),
  (36, 6, 'Season the mixture with salt and pepper to taste, then cover the tagine or skillet with a lid or foil.'),
  (36, 7, 'Transfer the covered tagine or skillet to the preheated oven and braise the tagine for 2-3 hours, or until the meat is tender and the flavors have melded together, stirring occasionally.'),
  (36, 8, 'Remove the tagine from the oven and let it rest for a few minutes before serving. Garnish the tagine with chopped fresh cilantro and serve it hot with couscous, rice, or crusty bread for soaking up the flavorful sauce.'),

-- Pelmeni
  (37, 1, 'In a large mixing bowl, combine the flour and salt. Make a well in the center of the flour and add the beaten eggs and water.'),
  (37, 2, 'Using a fork or your hands, gradually incorporate the flour into the wet ingredients until a dough forms.'),
  (37, 3, 'Turn the dough out onto a lightly floured surface and knead it for 5-7 minutes, or until smooth and elastic. Cover the dough with a clean kitchen towel and let it rest for 30 minutes.'),
  (37, 4, 'While the dough is resting, prepare the filling. In a mixing bowl, combine the ground pork, ground beef, finely minced onion, salt, pepper, and garlic powder. Mix well to combine.'),
  (37, 5, 'Roll out the rested dough on a floured surface until it is about 1/8 inch thick. Use a round cookie cutter or glass to cut out circles of dough, approximately 2 inches in diameter.'),
  (37, 6, 'Place a small spoonful of the meat filling in the center of each dough circle. Fold the dough over the filling to create a half-moon shape, then pinch the edges together firmly to seal.'),
  (37, 7, 'Repeat the process with the remaining dough and filling until all the pelmeni are formed.'),
  (37, 8, 'Bring a large pot of salted water to a boil. Drop the pelmeni into the boiling water in batches, being careful not to overcrowd the pot.'),
  (37, 9, 'Cook the pelmeni for 5-7 minutes, or until they float to the surface and are cooked through.'),
  (37, 10, 'Using a slotted spoon, remove the cooked pelmeni from the water and transfer them to a serving platter.'),
  (37, 11, 'Serve the pelmeni hot, topped with melted butter, sour cream, chopped fresh dill, and a sprinkle of black pepper, if desired.'),

-- Causa Rellena
  (38, 1, 'Place the peeled and diced potatoes in a large pot and cover them with cold salted water. Bring the pot to a boil over medium-high heat, then reduce the heat to medium-low and simmer the potatoes until fork-tender, about 15-20 minutes.'),
  (38, 2, 'While the potatoes are cooking, prepare the filling. In a mixing bowl, combine the shredded chicken, diced avocado, diced red onion, diced celery, minced jalapeño, mayonnaise, lime juice, salt, and pepper. Mix well to combine, adjusting the seasoning to taste.'),
  (38, 3, 'Once the potatoes are cooked, drain them well and transfer them to a large mixing bowl. Mash the potatoes with a potato masher or fork until smooth and creamy. Season the mashed potatoes with salt, pepper, and lime juice to taste.'),
  (38, 4, 'Line the bottom of a rectangular baking dish or casserole dish with plastic wrap, leaving some overhang on the sides for easy removal later.'),
  (38, 5, 'Spread half of the mashed potato mixture evenly in the bottom of the prepared dish, smoothing it out with a spatula or the back of a spoon to create an even layer.'),
  (38, 6, 'Layer the chicken and avocado filling on top of the mashed potatoes, spreading it out evenly across the surface.'),
  (38, 7, 'Top the filling with the remaining mashed potato mixture, spreading it out evenly to cover the filling completely and smoothing the top surface.'),
  (38, 8, 'Cover the dish with plastic wrap and refrigerate the causa rellena for at least 1 hour, or until chilled and set.'),
  (38, 9, 'To serve, carefully lift the causa rellena out of the baking dish using the overhanging plastic wrap. Transfer it to a cutting board and slice it into individual portions using a sharp knife.'),
  (38, 10, 'Garnish each slice of causa rellena with a slice of hard-boiled egg, a black olive, and a sprinkle of chopped fresh parsley or cilantro, if desired.'),
  (38, 11, 'Serve the causa rellena cold, accompanied by lime wedges and additional black olives on the side.'),

-- Divine Pavlova
  (39, 1, 'Preheat the oven to 300°F (150°C) and line a baking sheet with parchment paper.'),
  (39, 2, 'In a large mixing bowl, beat the egg whites and cream of tartar with an electric mixer on medium speed until soft peaks form.'),
  (39, 3, 'Gradually add the sugar, 1 tablespoon at a time, while continuing to beat the egg whites on high speed until stiff, glossy peaks form.'),
  (39, 4, 'Gently fold in the cornstarch, white vinegar, and vanilla extract until just combined, being careful not to deflate the egg whites.'),
  (39, 5, 'Spoon the meringue mixture onto the prepared baking sheet and use a spatula to shape it into a round disc, smoothing the edges and creating a slight indentation in the center to hold the toppings later.'),
  (39, 6, 'Transfer the pavlova to the preheated oven and immediately reduce the temperature to 250°F (120°C). Bake the pavlova for 1 hour and 15 minutes to 1 hour and 30 minutes, or until the outside is crisp and dry, and the pavlova lifts easily off the parchment paper.'),
  (39, 7, 'Turn off the oven and leave the pavlova inside with the door slightly ajar to cool completely, preferably overnight.'),
  (39, 8, 'When ready to serve, whip the heavy cream with powdered sugar and vanilla extract until stiff peaks form.'),
  (39, 9, 'Spread the whipped cream over the cooled pavlova, then top it with fresh fruit such as berries, kiwi, mango, or passion fruit.'),
  (39, 10, 'Drizzle the pavlova with honey or fruit coulis, if desired, and garnish with fresh mint leaves for a pop of color.'),
  (39, 11, 'Slice the pavlova into wedges and serve immediately, as it may soften if left to sit for too long.'),

-- Nordic Swedish Meatballs
  (40, 1, 'Preheat the oven to 400°F (200°C) and line a baking sheet with parchment paper.'),
  (40, 2, 'In a large mixing bowl, combine the ground beef, ground pork, breadcrumbs, finely chopped onion, minced garlic, beaten egg, milk, salt, pepper, allspice, and nutmeg. Mix well until fully combined.'),
  (40, 3, 'Shape the meat mixture into small balls, about 1 inch in diameter, and arrange them on the prepared baking sheet.'),
  (40, 4, 'Bake the meatballs in the preheated oven for 15-20 minutes, or until cooked through and lightly browned on the outside.'),
  (40, 5, 'While the meatballs are baking, prepare the gravy. In a saucepan, melt the butter over medium heat. Whisk in the flour to create a roux, cooking for 1-2 minutes until golden brown.'),
  (40, 6, 'Gradually whisk in the beef broth and heavy cream, stirring constantly to prevent lumps from forming. Cook the gravy until thickened and smooth, about 5-7 minutes.'),
  (40, 7, 'Season the gravy with salt, pepper, and a pinch of nutmeg, adjusting the seasoning to taste.'),
  (40, 8, 'Once the meatballs are cooked, transfer them to a serving dish and pour the gravy over the top, gently tossing to coat the meatballs in the sauce.'),
  (40, 9, 'Serve the Swedish meatballs hot, garnished with chopped fresh parsley, alongside lingonberry sauce and mashed potatoes, if desired.'),

-- Milanesa
  (41, 1, 'Preheat the oven to 400°F (200°C) and line a baking sheet with parchment paper.'),
  (41, 2, 'Place the chicken breasts between two sheets of plastic wrap and pound them to an even thickness, about 1/4 inch thick.'),
  (41, 3, 'Season the chicken breasts with salt and pepper on both sides.'),
  (41, 4, 'Place a slice of ham and a slice of Swiss cheese on each chicken breast.'),
  (41, 5, 'Roll up the chicken breasts, starting from the narrow end, and secure them with toothpicks.'),
  (41, 6, 'In a shallow dish, combine the breadcrumbs, grated Parmesan cheese, and Italian seasoning.'),
  (41, 7, 'Dip each rolled chicken breast in the beaten egg, then dredge it in the breadcrumb mixture, pressing gently to adhere.'),
  (41, 8, 'Place the breaded chicken breasts in the prepared baking dish, seam-side down.'),
  (41, 9, 'Bake in the preheated oven for 25-30 minutes, or until the chicken is cooked through and the breading is golden and crispy.'),
  (41, 10, 'Remove the toothpicks from the chicken breasts and serve them hot, garnished with chopped fresh parsley and lemon wedges for squeezing over the top.'),

-- Carbonnade Flamande
  (42, 1, 'In a large Dutch oven or heavy-bottomed pot, heat the butter and olive oil over medium-high heat until the butter is melted and foamy.'),
  (42, 2, 'Add the sliced onions to the pot and cook, stirring occasionally, until softened and caramelized, about 20-25 minutes.'),
  (42, 3, 'Push the caramelized onions to one side of the pot and add the sliced beef chuck to the empty side.'),
  (42, 4, 'Cook the beef until browned on all sides, about 5-7 minutes, then stir it together with the caramelized onions.'),
  (42, 5, 'Sprinkle the flour over the beef and onions, stirring well to coat everything evenly.'),
  (42, 6, 'Pour in the beef broth and beer, stirring to deglaze the bottom of the pot and scrape up any browned bits.'),
  (42, 7, 'Add the brown sugar, Dijon mustard, thyme, bay leaf, and vinegar to the pot, stirring well to combine.'),
  (42, 8, 'Season the mixture with salt and pepper to taste, then bring it to a simmer over medium heat.'),
  (42, 9, 'Cover the pot and reduce the heat to low. Let the carbonnade flamande simmer gently for 2-3 hours, or until the beef is tender and the flavors have melded together, stirring occasionally.'),
  (42, 10, 'About 30 minutes before serving, toast the bread slices in a toaster or under the broiler until golden brown and crisp. Rub the toasted bread slices with the cut side of the garlic clove.'),
  (42, 11, 'To serve, ladle the hot carbonnade flamande into serving bowls and top each portion with a slice of garlic-rubbed toast. Garnish with chopped fresh parsley, if desired.'),

-- Chiles en Nogada
  (43, 1, 'Preheat the oven to 350°F (175°C).'),
  (43, 2, 'Roast the poblano chiles directly over an open flame or under the broiler until the skins are charred and blistered on all sides.'),
  (43, 3, 'Transfer the roasted chiles to a bowl and cover them with plastic wrap. Let them steam for 10-15 minutes to loosen the skins.'),
  (43, 4, 'Once the chiles are cool enough to handle, peel off the charred skins, then make a lengthwise slit down one side of each chile and carefully remove the seeds and membranes, leaving the stems intact.'),
  (43, 5, 'In a large skillet, heat the olive oil over medium heat. Add the diced onion and cook until softened and translucent.'),
  (43, 6, 'Add the ground beef to the skillet and cook, breaking it up with a spoon, until browned and cooked through.'),
  (43, 7, 'Stir in the diced apple, diced pear, raisins, chopped almonds, ground cinnamon, ground cloves, and salt, cooking for another 5-7 minutes to soften the fruit and meld the flavors together.'),
  (43, 8, 'Once the filling is cooked, stuff each roasted poblano chile with a generous portion of the meat and fruit mixture, gently pressing the slit edges of the chiles together to enclose the filling.'),
  (43, 9, 'In a blender or food processor, combine the walnuts, milk, cream cheese, sugar, and cinnamon. Blend until smooth and creamy, adding more milk if necessary to achieve a pourable consistency.'),
  (43, 10, 'Place the stuffed chiles in a single layer in a baking dish and pour the walnut sauce over the top, ensuring that each chile is generously coated with the sauce.'),
  (43, 11, 'Bake the chiles en nogada in the preheated oven for 20-25 minutes, or until heated through and the sauce is bubbly and slightly golden brown on top.'),
  (43, 12, 'To serve, transfer the stuffed chiles to individual plates and drizzle any remaining walnut sauce over the top. Garnish with pomegranate arils and chopped fresh parsley, if desired.'),

-- Tempura
  (44, 1, 'Prepare the ingredients by cutting seafood such as shrimp, fish, and vegetables like sweet potatoes, bell peppers, and mushrooms into bite-sized pieces.'),
  (44, 2, 'In a large bowl, combine cold water and egg yolk, then gently mix in cake flour or tempura flour until just combined. Be careful not to overmix; the batter should be slightly lumpy.'),
  (44, 3, 'Heat vegetable oil in a deep fryer or large pot to 350°F (180°C).'),
  (44, 4, 'Dip the prepared ingredients into the batter, making sure they are evenly coated.'),
  (44, 5, 'Carefully place the battered ingredients into the hot oil, frying in batches to avoid overcrowding the fryer.'),
  (44, 6, 'Fry the tempura for 2-3 minutes, or until golden brown and crispy.'),
  (44, 7, 'Use a slotted spoon or wire mesh strainer to remove the tempura from the oil, allowing any excess oil to drip off.'),
  (44, 8, 'Transfer the cooked tempura to a plate lined with paper towels to drain.'),
  (44, 9, 'Serve the tempura immediately with dipping sauce and garnishes such as grated daikon radish, grated ginger, or chopped green onions.'),

-- Mapo Tofu
  (45, 1, 'In a small bowl, mix together soy sauce, rice wine, and cornstarch to make a slurry. Set aside.'),
  (45, 2, 'Heat oil in a wok or large skillet over medium-high heat. Add ground pork or beef and cook until browned, breaking it up with a spoon.'),
  (45, 3, 'Add minced garlic, ginger, and doubanjiang (chili bean paste) to the wok, stirring to combine and cook until fragrant.'),
  (45, 4, 'Stir in the soy sauce mixture and chicken broth, then add diced tofu and simmer for 5-7 minutes, or until the tofu is heated through and the sauce has thickened slightly.'),
  (45, 5, 'Taste the mapo tofu and adjust the seasoning with salt, sugar, or additional chili bean paste, if desired.'),
  (45, 6, 'Just before serving, drizzle sesame oil over the top and sprinkle with chopped green onions.'),
  (45, 7, 'Serve the mapo tofu hot with steamed rice and garnish with additional green onions, if desired.'),

-- Quiche Lorraine
  (46, 1, 'Preheat the oven to 375°F (190°C) and lightly grease a 9-inch pie dish or tart pan with butter or cooking spray.'),
  (46, 2, 'Roll out the pie crust dough on a floured surface to fit the prepared pie dish. Press the dough into the bottom and up the sides of the dish, trimming any excess.'),
  (46, 3, 'In a skillet, cook bacon until crispy, then remove it from the skillet and drain on paper towels before chopping it into small pieces.'),
  (46, 4, 'In a mixing bowl, whisk together eggs, heavy cream, salt, pepper, and nutmeg until well combined.'),
  (46, 5, 'Spread the chopped bacon and shredded Gruyère cheese evenly over the bottom of the pie crust.'),
  (46, 6, 'Pour the egg mixture over the bacon and cheese, ensuring it is evenly distributed.'),
  (46, 7, 'Bake the quiche in the preheated oven for 35-40 minutes, or until the center is set and the top is golden brown.'),
  (46, 8, 'Remove the quiche from the oven and let it cool for a few minutes before slicing and serving.'),
  (46, 9, 'Serve the quiche Lorraine warm or at room temperature, garnished with chopped fresh chives or parsley, if desired.'),

-- Butter Chicken
  (47, 1, 'Marinate chicken pieces in a mixture of yogurt, lemon juice, ginger, garlic, garam masala, turmeric, chili powder, and salt for at least 1 hour, or overnight for best flavor.'),
  (47, 2, 'In a large skillet or saucepan, heat oil over medium heat. Add diced onions and cook until soft and translucent.'),
  (47, 3, 'Add marinated chicken pieces to the skillet, cooking until browned on all sides.'),
  (47, 4, 'Stir in tomato puree, ground almonds, butter, and cream, then bring the mixture to a simmer.'),
  (47, 5, 'Cover and cook over low heat for 20-25 minutes, stirring occasionally, until the chicken is cooked through and the sauce has thickened.'),
  (47, 6, 'Taste and adjust the seasoning with salt, sugar, or additional spices, if desired.'),
  (47, 7, 'Garnish the butter chicken with chopped cilantro and a drizzle of cream before serving.'),
  (47, 8, 'Serve the butter chicken hot with rice, naan bread, or roti for a complete meal.'),

-- Tom Kha Gai
  (48, 1, 'In a large pot, combine chicken broth, coconut milk, lemongrass stalks (bruised), galangal slices, kaffir lime leaves, and sliced chili peppers.'),
  (48, 2, 'Bring the mixture to a gentle simmer over medium heat, then add sliced chicken breast and mushrooms.'),
  (48, 3, 'Simmer the soup for 10-15 minutes, or until the chicken is cooked through and the mushrooms are tender.'),
  (48, 4, 'Stir in fish sauce, lime juice, and sugar, adjusting the seasoning to taste with salt and pepper if necessary.'),
  (48, 5, 'Remove the soup from heat and discard the lemongrass stalks, galangal slices, and kaffir lime leaves before serving.'),
  (48, 6, 'Garnish the Tom Kha Gai with chopped cilantro and thinly sliced chili peppers, if desired.'),
  (48, 7, 'Serve the soup hot as a starter or alongside steamed rice for a more substantial meal.'),

-- Gazpacho Andaluz
  (49, 1, 'In a blender or food processor, combine tomatoes, bell peppers, cucumbers, onions, garlic, and bread slices.'),
  (49, 2, 'Blend the mixture until smooth, then transfer it to a large bowl.'),
  (49, 3, 'Stir in olive oil, vinegar, salt, and pepper, adjusting the seasoning to taste.'),
  (49, 4, 'Cover the gazpacho and refrigerate it for at least 2 hours, or until well chilled.'),
  (49, 5, 'Before serving, taste the gazpacho and adjust the seasoning with salt, pepper, or additional vinegar if necessary.'),
  (49, 6, 'Serve the chilled gazpacho Andaluz in individual bowls, garnished with diced vegetables such as tomatoes, cucumbers, and bell peppers, and a drizzle of olive oil.'),

-- Moussaka with Eggplant
  (50, 1, 'Preheat the oven to 375°F (190°C) and lightly grease a 9x13-inch baking dish with olive oil or cooking spray.'),
  (50, 2, 'Slice eggplants into rounds, then sprinkle them with salt and let them sit for 15-20 minutes to release excess moisture. Pat the eggplant slices dry with paper towels before cooking.'),
  (50, 3, 'Heat olive oil in a large skillet over medium heat. Add sliced onions and minced garlic, cooking until softened and fragrant.'),
  (50, 4, 'Add ground lamb or beef to the skillet, breaking it up with a spoon and cooking until browned.'),
  (50, 5, 'Stir in diced tomatoes, tomato paste, cinnamon, oregano, and salt, cooking for another 5-7 minutes.'),
  (50, 6, 'In a separate saucepan, melt butter over medium heat. Whisk in flour to create a roux, then gradually whisk in milk until smooth and thickened.'),
  (50, 7, 'Remove the saucepan from heat and whisk in grated Parmesan cheese and beaten egg until well combined.'),
  (50, 8, 'Layer the bottom of the prepared baking dish with half of the cooked eggplant slices, then spread half of the meat sauce over the eggplant.'),
  (50, 9, 'Repeat the layers with the remaining eggplant slices and meat sauce, then pour the béchamel sauce over the top, spreading it out evenly.'),
  (50, 10, 'Bake the moussaka in the preheated oven for 45-50 minutes, or until the top is golden brown and bubbly.'),
  (50, 11, 'Remove the moussaka from the oven and let it cool for 10-15 minutes before slicing and serving.'),
  (50, 12, 'Serve the moussaka with a Greek salad and crusty bread for a complete meal.');




INSERT INTO Meal (id, type) VALUES
(1, 'Breakfast'),
(2, 'Brunch'),
(3, 'Lunch'),
(4, 'Supper'),
(5, 'Dinner'),
(6, 'Snack'),
(7, 'Dessert'),
(8, 'Appetizer');

-- Insert data into Meal_Recipe table
INSERT INTO Meal_Recipe (meal_id, recipe_id) VALUES
(7, 11),
(7, 12),
(8, 26),
(6, 40),
(1, 31),
(8, 18),
(7, 16),
(7, 26),
(1, 43),
(7, 34),
(3, 12),
(4, 41),
(6, 12),
(6, 42),
(6, 45),
(5, 37),
(2, 35),
(6, 33),
(1, 20),
(7, 37),
(3, 21),
(6, 2),
(6, 9),
(7, 22),
(2, 14),
(4, 36),
(7, 35),
(1, 8),
(3, 11),
(8, 47),
(7, 18),
(5, 27),
(8, 39),
(3, 37),
(8, 2),
(7, 47),
(3, 36),
(1, 28),
(2, 43),
(5, 41),
(1, 1),
(2, 36),
(6, 30),
(8, 12),
(4, 37),
(1, 3),
(8, 17),
(2, 1),
(3, 31),
(4, 45),
(6, 8),
(2, 11),
(3, 4),
(2, 8),
(1, 50),
(5, 32),
(3, 34),
(2, 7),
(8, 9),
(7, 46),
(4, 47),
(1, 39),
(6, 23),
(4, 20),
(8, 46),
(5, 46),
(6, 49),
(6, 34),
(4, 18),
(7, 49),
(3, 6),
(5, 8),
(7, 33),
(8, 49),
(4, 34),
(4, 11),
(6, 26),
(3, 42),
(6, 44),
(2, 44),
(4, 6),
(4, 13),
(5, 49),
(6, 28),
(6, 6),
(5, 47),
(2, 28),
(1, 46),
(7, 5),
(5, 26),
(2, 33),
(6, 5),
(2, 23),
(8, 34),
(1, 25),
(7, 9),
(6, 7),
(4, 46),
(7, 8),
(8, 29);






INSERT INTO Label(id, name) VALUES
(1, 'Quick Lunch'),
(2, 'Leisurely Lunch'),
(3, 'Hearty Brunch'),
(4, 'Speedy Breakfast'),
(5, 'Gourmet Dinner'),
(6, 'Family Dinner'),
(7, 'Weekend Brunch'),
(8, 'Office Lunch'),
(9, 'Home-cooked Dinner'),
(10, 'Healthy Breakfast'),
(11, 'Late-night Snack'),
(12, 'Sunday Brunch'),
(13, 'Midweek Dinner'),
(14, 'Holiday Feast'),
(15, 'Picnic Lunch'),
(16, 'Fancy Dinner'),
(17, 'Casual Lunch'),
(18, 'Business Dinner'),
(19, 'Holiday Brunch'),
(20, 'Midnight Snack');




INSERT INTO Label_Recipe (label_id, recipe_id) VALUES
(14, 5),
(2, 22),
(14, 3),
(15, 15),
(7, 9),
(8, 27),
(8, 35),
(10, 44),
(17, 10),
(6, 26),
(9, 12),
(5, 49),
(17, 35),
(6, 34),
(3, 46),
(12, 14),
(14, 31),
(18, 46),
(3, 29),
(15, 6),
(1, 10),
(2, 25),
(11, 29),
(7, 32),
(15, 38),
(3, 20),
(19, 42),
(5, 1),
(5, 22),
(16, 6),
(11, 44),
(3, 47),
(9, 14),
(6, 13),
(19, 24),
(16, 13),
(18, 44),
(16, 26),
(14, 38),
(13, 9),
(19, 11),
(17, 2),
(18, 11),
(10, 4),
(10, 40),
(12, 22),
(16, 50),
(6, 40),
(11, 27),
(1, 19),
(16, 35),
(13, 28),
(2, 38),
(6, 16),
(20, 14),
(14, 23),
(8, 43),
(6, 28),
(19, 15),
(8, 30),
(15, 35),
(14, 10),
(5, 45),
(8, 9),
(7, 26),
(1, 26),
(2, 16),
(2, 32),
(1, 30),
(20, 35),
(16, 17),
(9, 10),
(20, 2),
(13, 7),
(20, 16),
(4, 25),
(2, 30),
(4, 31),
(3, 6),
(2, 31),
(19, 31),
(8, 5),
(7, 49),
(14, 40),
(6, 6),
(16, 36),
(1, 21),
(8, 18),
(9, 3),
(1, 16),
(1, 28),
(1, 9),
(12, 13),
(17, 32),
(10, 15),
(13, 15),
(2, 17),
(7, 40),
(3, 9),
(2, 7);



-- Insert data into Tool table
INSERT INTO Tool (id, name, image_url, instructions) VALUES
-- Knife
(1, 'Knife', '/tools/knife.jpg', 'Use a knife to chop, slice, or dice ingredients.'),
-- Cutting Board
(2, 'Cutting Board', '/tools/cutting_board.jpg', 'Place ingredients on the cutting board for chopping.'),
-- Mixing Bowl
(3, 'Mixing Bowl', '/tools/mixing_bowl.jpg', 'Use a mixing bowl to combine ingredients.'),
-- Measuring Cup
(4, 'Measuring Cup', '/tools/measuring_cup.jpg', 'Use a measuring cup to accurately measure liquid or dry ingredients.'),
-- Measuring Spoon
(5, 'Measuring Spoon', '/tools/measuring_spoon.jpg', 'Use a measuring spoon to accurately measure small amounts of ingredients.'),
-- Whisk
(6, 'Whisk', '/tools/whisk.jpg', 'Use a whisk to mix ingredients thoroughly and incorporate air into the mixture.'),
-- Wooden Spoon
(7, 'Wooden Spoon', '/tools/wooden_spoon.jpg', 'Use a wooden spoon to stir ingredients while cooking.'),
-- Spatula
(8, 'Spatula', '/tools/spatula.jpg', 'Use a spatula to flip or lift food items while cooking.'),
-- Rolling Pin
(9, 'Rolling Pin', '/tools/rolling_pin.jpg', 'Use a rolling pin to roll out dough for pastries or flatbreads.'),
-- Baking Sheet
(10, 'Baking Sheet', '/tools/baking_sheet.jpg', 'Use a baking sheet to place items in the oven for baking.'),
-- Saucepan
(11, 'Saucepan', '/tools/saucepan.jpg', 'Use a saucepan to heat or cook sauces, soups, or liquids on the stovetop.'),
-- Frying Pan
(12, 'Frying Pan', '/tools/frying_pan.jpg', 'Use a frying pan to fry or sauté food items on the stovetop.'),
-- Grater
(13, 'Grater', '/tools/grater.jpg', 'Use a grater to grate cheese, vegetables, or other ingredients.'),
-- Colander
(14, 'Colander', '/tools/colander.jpg', 'Use a colander to drain liquids from cooked pasta, vegetables, or other foods.'),
-- Oven Mitts
(15, 'Oven Mitts', '/tools/oven_mitts.jpg', 'Use oven mitts to handle hot pots, pans, or dishes safely.'),
-- Tongs
(16, 'Tongs', '/tools/tongs.jpg', 'Use tongs to grip and lift hot or slippery food items safely.'),
-- Ladle
(17, 'Ladle', '/tools/ladle.jpg', 'Use a ladle to serve soups, stews, sauces, or other liquids.'),
-- Peeler
(18, 'Peeler', '/tools/peeler.jpg', 'Use a peeler to remove the skin from fruits and vegetables.'),
-- Timer
(19, 'Timer', '/tools/timer.jpg', 'Use a timer to keep track of cooking or baking times.'),
-- Mortar and Pestle
(20, 'Mortar and Pestle', '/tools/mortar_and_pestle.jpg', 'Use a mortar and pestle to grind spices, herbs, or other ingredients.'),
-- Oven Thermometer
(21, 'Oven Thermometer', '/tools/oven_thermometer.jpg', 'Use an oven thermometer to monitor the temperature inside your oven.'),
-- Instant-Read Thermometer
(22, 'Instant-Read Thermometer', '/tools/instant_read_thermometer.jpg', 'Use an instant-read thermometer to check the internal temperature of cooked meats.'),
-- Skewers
(23, 'Skewers', '/tools/skewers.jpg', 'Use skewers to thread and grill meats, vegetables, or other foods.'),
-- Stand Mixer
(24, 'Stand Mixer', '/tools/stand_mixer.jpg', 'Use a stand mixer to mix, knead, or whip ingredients with less effort.'),
-- Food Processor
(25, 'Food Processor', '/tools/food_processor.jpg', 'Use a food processor to chop, slice, shred, or puree ingredients quickly and efficiently.'),
-- Blender
(26, 'Blender', '/tools/blender.jpg', 'Use a blender to mix, puree, or emulsify ingredients into smoothies, sauces, or soups.'),
-- Ice Cream Maker
(27, 'Ice Cream Maker', '/tools/ice_cream_maker.jpg', 'Use an ice cream maker to churn and freeze ice cream, sorbet, or gelato.'),
-- Pastry Brush
(28, 'Pastry Brush', '/tools/pastry_brush.jpg', 'Use a pastry brush to apply egg wash, butter, or glaze to pastries, bread, or desserts.'),
-- Cake Pan
(29, 'Cake Pan', '/tools/cake_pan.jpg', 'Use a cake pan to bake cakes, brownies, or other desserts in the oven.'),
-- Muffin Pan
(30, 'Muffin Pan', '/tools/muffin_pan.jpg', 'Use a muffin pan to bake muffins, cupcakes, or other individual-sized baked goods.'),
-- Pie Dish
(31, 'Pie Dish', '/tools/pie_dish.jpg', 'Use a pie dish to bake pies, quiches, or tarts in the oven.'),
-- Roasting Pan
(32, 'Roasting Pan', '/tools/roasting_pan.jpg', 'Use a roasting pan to roast meats, poultry, or vegetables in the oven.'),
-- Cake Stand
(33, 'Cake Stand', '/tools/cake_stand.jpg', 'Use a cake stand to display and serve cakes or other desserts elegantly.'),
-- Lemon Squeezer
(34, 'Lemon Squeezer', '/tools/lemon_squeezer.jpg', 'Use a lemon squeezer to extract juice from lemons or other citrus fruits easily.'),
-- Garlic Press
(35, 'Garlic Press', '/tools/garlic_press.jpg', 'Use a garlic press to crush garlic cloves quickly and easily.'),
-- Mandoline Slicer
(36, 'Mandoline Slicer', '/tools/mandoline_slicer.jpg', 'Use a mandoline slicer to slice fruits, vegetables, or cheeses evenly and thinly.'),
-- Can Opener
(37, 'Can Opener', '/tools/can_opener.jpg', 'Use a can opener to open canned goods safely and efficiently.'),
-- Pasta Maker
(38, 'Pasta Maker', '/tools/pasta_maker.jpg', 'Use a pasta maker to roll and cut pasta dough into various shapes and sizes.'),
-- Rice Cooker
(39, 'Rice Cooker', '/tools/rice_cooker.jpg', 'Use a rice cooker to cook rice, grains, or steamed dishes with ease.'),
-- Wok
(40, 'Wok', '/tools/wok.jpg', 'Use a wok to stir-fry, steam, or fry foods quickly over high heat.'),
-- Dutch Oven
(41, 'Dutch Oven', '/tools/dutch_oven.jpg', 'Use a Dutch oven to braise, stew, or bake dishes in the oven or on the stovetop.'),
-- Blender
(42, 'Hand Blender', '/tools/hand_blender.jpg', 'Use a hand blender to mix, puree, or emulsify ingredients directly in the pot or bowl.'),
-- Cocktail Shaker
(43, 'Cocktail Shaker', '/tools/cocktail_shaker.jpg', 'Use a cocktail shaker to mix and chill cocktails by shaking them with ice.'),
-- Bar Spoon
(44, 'Bar Spoon', '/tools/bar_spoon.jpg', 'Use a bar spoon to stir cocktails gently and layer ingredients in mixed drinks.'),
-- Muddler
(45, 'Muddler', '/tools/muddler.jpg', 'Use a muddler to crush fruits, herbs, or spices in cocktails to release their flavors.'),
-- Jigger
(46, 'Jigger', '/tools/jigger.jpg', 'Use a jigger to measure precise amounts of liquid ingredients for cocktails.'),
-- Strainer
(47, 'Strainer', '/tools/strainer.jpg', 'Use a strainer to remove ice, fruit, or other solids from cocktails as you pour them into a glass.'),
-- Ice Bucket
(48, 'Ice Bucket', '/tools/ice_bucket.jpg', 'Use an ice bucket to keep ice cubes cold and easily accessible for cocktails or drinks.'),
-- Corkscrew
(49, 'Corkscrew', '/tools/corkscrew.jpg', 'Use a corkscrew to remove corks from wine bottles easily and safely.'),
-- Wine Aerator
(50, 'Wine Aerator', '/tools/wine_aerator.jpg', 'Use a wine aerator to expose wine to air and enhance its flavors and aromas.')
;




-- Insert data into Tool_Recipe table for basic tools needed for each recipe
-- Spaghetti Carbonara (Recipe ID: 1)
INSERT INTO Tool_Recipe (tool_id, recipe_id) VALUES
(1, 1), -- Knife
(2, 1), -- Cutting Board
(3, 1), -- Mixing Bowl
(4, 1), -- Measuring Cup
(7, 1), -- Wooden Spoon

-- Margherita Pizza (Recipe ID: 2)
(1, 2), -- Knife
(2, 2), -- Cutting Board
(3, 2), -- Mixing Bowl
(4, 2), -- Measuring Cup
(7, 2), -- Wooden Spoon
(10, 2), -- Baking Sheet
(28, 2), -- Pastry Brush
(29, 2), -- Cake Pan

-- Tacos al Pastor (Recipe ID: 3)
(1, 3), -- Knife
(2, 3), -- Cutting Board
(3, 3), -- Mixing Bowl
(4, 3), -- Measuring Cup
(7, 3), -- Wooden Spoon
(12, 3), -- Frying Pan
(16, 3), -- Tongs

-- Sushi Rolls (Recipe ID: 4)
(1, 4), -- Knife
(2, 4), -- Cutting Board
(3, 4), -- Mixing Bowl
(4, 4), -- Measuring Cup
(6, 4), -- Whisk
(7, 4), -- Wooden Spoon
(13, 4), -- Grater

-- Kung Pao Chicken (Recipe ID: 5)
(1, 5), -- Knife
(2, 5), -- Cutting Board
(3, 5), -- Mixing Bowl
(4, 5), -- Measuring Cup
(7, 5), -- Wooden Spoon
(11, 5), -- Saucepan
(16, 5), -- Tongs

-- Coq au Vin (Recipe ID: 6)
(1, 6), -- Knife
(2, 6), -- Cutting Board
(3, 6), -- Mixing Bowl
(4, 6), -- Measuring Cup
(7, 6), -- Wooden Spoon
(11, 6), -- Saucepan
(16, 6), -- Tongs

-- Chicken Tikka Masala (Recipe ID: 7)
(1, 7), -- Knife
(2, 7), -- Cutting Board
(3, 7), -- Mixing Bowl
(4, 7), -- Measuring Cup
(7, 7), -- Wooden Spoon
(11, 7), -- Saucepan
(16, 7), -- Tongs

-- Pad Thai (Recipe ID: 8)
(1, 8), -- Knife
(2, 8), -- Cutting Board
(3, 8), -- Mixing Bowl
(4, 8), -- Measuring Cup
(7, 8), -- Wooden Spoon
(11, 8), -- Saucepan
(16, 8), -- Tongs

-- Paella (Recipe ID: 9)
(1, 9), -- Knife
(2, 9), -- Cutting Board
(3, 9), -- Mixing Bowl
(4, 9), -- Measuring Cup
(7, 9), -- Wooden Spoon
(11, 9), -- Saucepan
(16, 9), -- Tongs

-- Greek Salad (Recipe ID: 10)
(1, 10), -- Knife
(2, 10), -- Cutting Board
(3, 10), -- Mixing Bowl
(4, 10), -- Measuring Cup
(7, 10), -- Wooden Spoon

-- Feijoada (Recipe ID: 11)
(1, 11), -- Knife
(2, 11), -- Cutting Board
(3, 11), -- Mixing Bowl
(4, 11), -- Measuring Cup
(7, 11), -- Wooden Spoon
(11, 11), -- Saucepan

-- Kimchi (Recipe ID: 12)
(1, 12), -- Knife
(2, 12), -- Cutting Board
(3, 12), -- Mixing Bowl
(4, 12), -- Measuring Cup
(7, 12), -- Wooden Spoon
(19, 12), -- Timer

-- Falafel (Recipe ID: 13)
(1, 13), -- Knife
(2, 13), -- Cutting Board
(3, 13), -- Mixing Bowl
(4, 13), -- Measuring Cup
(7, 13), -- Wooden Spoon
(12, 13), -- Frying Pan
(16, 13), -- Tongs

-- Pho (Recipe ID: 14)
(1, 14), -- Knife
(2, 14), -- Cutting Board
(3, 14), -- Mixing Bowl
(4, 14), -- Measuring Cup
(7, 14), -- Wooden Spoon
(11, 14), -- Saucepan
(16, 14), -- Tongs

-- Kebab (Recipe ID: 15)
(1, 15), -- Knife
(2, 15), -- Cutting Board
(3, 15), -- Mixing Bowl
(4, 15), -- Measuring Cup
(7, 15), -- Wooden Spoon
(12, 15), -- Frying Pan
(16, 15), -- Tongs

-- Couscous (Recipe ID: 16)
(1, 16), -- Knife
(2, 16), -- Cutting Board
(3, 16), -- Mixing Bowl
(4, 16), -- Measuring Cup
(7, 16), -- Wooden Spoon
(11, 16), -- Saucepan

-- Borscht (Recipe ID: 17)
(1, 17), -- Knife
(2, 17), -- Cutting Board
(3, 17), -- Mixing Bowl
(4, 17), -- Measuring Cup
(7, 17), -- Wooden Spoon
(11, 17), -- Saucepan
(20, 17), -- Ladle

-- Ceviche (Recipe ID: 18)
(1, 18), -- Knife
(2, 18), -- Cutting Board
(3, 18), -- Mixing Bowl
(4, 18), -- Measuring Cup
(7, 18), -- Wooden Spoon
(19, 18), -- Timer

-- Pavlova (Recipe ID: 19)
(1, 19), -- Knife
(2, 19), -- Cutting Board
(3, 19), -- Mixing Bowl
(4, 19), -- Measuring Cup
(7, 19), -- Wooden Spoon
(20, 19), -- Ladle

-- Swedish Meatballs (Recipe ID: 20)
(1, 20), -- Knife
(2, 20), -- Cutting Board
(3, 20), -- Mixing Bowl
(4, 20), -- Measuring Cup
(7, 20), -- Wooden Spoon
(11, 20), -- Saucepan
(16, 20), -- Tongs

-- Empanadas (Recipe ID: 21)
(1, 21), -- Knife
(2, 21), -- Cutting Board
(3, 21), -- Mixing Bowl
(4, 21), -- Measuring Cup
(7, 21), -- Wooden Spoon
(12, 21), -- Frying Pan
(16, 21), -- Tongs

-- Lasagna (Recipe ID: 22)
(1, 22), -- Knife
(2, 22), -- Cutting Board
(3, 22), -- Mixing Bowl
(4, 22), -- Measuring Cup
(7, 22), -- Wooden Spoon
(11, 22), -- Saucepan
(10, 22), -- Baking Sheet
(30, 22), -- Casserole Dish

-- Enchiladas (Recipe ID: 23)
(1, 23), -- Knife
(2, 23), -- Cutting Board
(3, 23), -- Mixing Bowl
(4, 23), -- Measuring Cup
(7, 23), -- Wooden Spoon
(11, 23), -- Saucepan
(16, 23), -- Tongs

-- Sushi Nigiri (Recipe ID: 24)
(1, 24), -- Knife
(2, 24), -- Cutting Board
(3, 24), -- Mixing Bowl
(4, 24), -- Measuring Cup
(6, 24), -- Whisk
(7, 24), -- Wooden Spoon
(8, 24), -- Rolling Pin

-- Sweet and Sour Pork (Recipe ID: 25)
(1, 25), -- Knife
(2, 25), -- Cutting Board
(3, 25), -- Mixing Bowl
(4, 25), -- Measuring Cup
(7, 25), -- Wooden Spoon
(11, 25), -- Saucepan
(12, 25), -- Frying Pan

-- Beef Bourguignon (Recipe ID: 26)
(1, 26), -- Knife
(2, 26), -- Cutting Board
(3, 26), -- Mixing Bowl
(4, 26), -- Measuring Cup
(7, 26), -- Wooden Spoon
(11, 26), -- Saucepan
(16, 26), -- Tongs

-- Chicken Curry (Recipe ID: 27)
(1, 27), -- Knife
(2, 27), -- Cutting Board
(3, 27), -- Mixing Bowl
(4, 27), -- Measuring Cup
(7, 27), -- Wooden Spoon
(11, 27), -- Saucepan
(16, 27), -- Tongs

-- Tom Yum Soup (Recipe ID: 28)
(1, 28), -- Knife
(2, 28), -- Cutting Board
(3, 28), -- Mixing Bowl
(4, 28), -- Measuring Cup
(7, 28), -- Wooden Spoon
(11, 28), -- Saucepan

-- Gazpacho (Recipe ID: 29)
(1, 29), -- Knife
(2, 29), -- Cutting Board
(3, 29), -- Mixing Bowl
(4, 29), -- Measuring Cup
(7, 29), -- Wooden Spoon
(19, 29), -- Timer

-- Moussaka (Recipe ID: 30)
(1, 30), -- Knife
(2, 30), -- Cutting Board
(3, 30), -- Mixing Bowl
(4, 30), -- Measuring Cup
(7, 30), -- Wooden Spoon
(11, 30), -- Saucepan
(30, 30), -- Casserole Dish

-- Pão de Queijo (Recipe ID: 31)
(1, 31), -- Knife
(2, 31), -- Cutting Board
(3, 31), -- Mixing Bowl
(4, 31), -- Measuring Cup
(7, 31), -- Wooden Spoon
(12, 31), -- Frying Pan

-- Bibimbap (Recipe ID: 32)
(1, 32), -- Knife
(2, 32), -- Cutting Board
(3, 32), -- Mixing Bowl
(4, 32), -- Measuring Cup
(7, 32), -- Wooden Spoon
(11, 32), -- Saucepan
(16, 32), -- Tongs

-- Tabbouleh (Recipe ID: 33)
(1, 33), -- Knife
(2, 33), -- Cutting Board
(3, 33), -- Mixing Bowl
(4, 33), -- Measuring Cup
(7, 33), -- Wooden Spoon

-- Pho Bo (Recipe ID: 34)
(1, 34), -- Knife
(2, 34), -- Cutting Board
(3, 34), -- Mixing Bowl
(4, 34), -- Measuring Cup
(7, 34), -- Wooden Spoon
(11, 34), -- Saucepan

-- Iskender Kebab (Recipe ID: 35)
(1, 35), -- Knife
(2, 35), -- Cutting Board
(3, 35), -- Mixing Bowl
(4, 35), -- Measuring Cup
(7, 35), -- Wooden Spoon
(12, 35), -- Frying Pan
(16, 35), -- Tongs

-- Tagine (Recipe ID: 36)
(1, 36), -- Knife
(2, 36), -- Cutting Board
(3, 36), -- Mixing Bowl
(4, 36), -- Measuring Cup
(7, 36), -- Wooden Spoon
(11, 36), -- Saucepan
(21, 36), -- Tagine Pot

-- Pelmeni (Recipe ID: 37)
(1, 37), -- Knife
(2, 37), -- Cutting Board
(3, 37), -- Mixing Bowl
(4, 37), -- Measuring Cup
(7, 37), -- Wooden Spoon
(22, 37), -- Rolling Pin
(23, 37), -- Ravioli Cutter

-- Causa Rellena (Recipe ID: 38)
(1, 38), -- Knife
(2, 38), -- Cutting Board
(3, 38), -- Mixing Bowl
(4, 38), -- Measuring Cup
(7, 38), -- Wooden Spoon

-- Pavlova (Recipe ID: 39)
(1, 39), -- Knife
(2, 39), -- Cutting Board
(3, 39), -- Mixing Bowl
(4, 39), -- Measuring Cup
(7, 39), -- Wooden Spoon
(20, 39), -- Ladle

-- Swedish Meatballs (Recipe ID: 40)
(1, 40), -- Knife
(2, 40), -- Cutting Board
(3, 40), -- Mixing Bowl
(4, 40), -- Measuring Cup
(7, 40), -- Wooden Spoon
(11, 40), -- Saucepan
(16, 40), -- Tongs

-- Milanesa (Recipe ID: 41)
(1, 41), -- Knife
(2, 41), -- Cutting Board
(3, 41), -- Mixing Bowl
(4, 41), -- Measuring Cup
(7, 41), -- Wooden Spoon
(12, 41), -- Frying Pan
(16, 41), -- Tongs

-- Carbonnade Flamande (Recipe ID: 42)
(1, 42), -- Knife
(2, 42), -- Cutting Board
(3, 42), -- Mixing Bowl
(4, 42), -- Measuring Cup
(7, 42), -- Wooden Spoon
(11, 42), -- Saucepan

-- Chiles en Nogada (Recipe ID: 43)
(1, 43), -- Knife
(2, 43), -- Cutting Board
(3, 43), -- Mixing Bowl
(4, 43), -- Measuring Cup
(7, 43), -- Wooden Spoon
(11, 43), -- Saucepan

-- Tempura (Recipe ID: 44)
(1, 44), -- Knife
(2, 44), -- Cutting Board
(3, 44), -- Mixing Bowl
(4, 44), -- Measuring Cup
(7, 44), -- Wooden Spoon
(12, 44), -- Frying Pan
(16, 44), -- Tongs

-- Mapo Tofu (Recipe ID: 45)
(1, 45), -- Knife
(2, 45), -- Cutting Board
(3, 45), -- Mixing Bowl
(4, 45), -- Measuring Cup
(7, 45), -- Wooden Spoon
(11, 45), -- Saucepan

-- Quiche Lorraine (Recipe ID: 46)
(1, 46), -- Knife
(2, 46), -- Cutting Board
(3, 46), -- Mixing Bowl
(4, 46), -- Measuring Cup
(7, 46), -- Wooden Spoon
(11, 46), -- Saucepan
(19, 46), -- Timer

-- Butter Chicken (Recipe ID: 47)
(1, 47), -- Knife
(2, 47), -- Cutting Board
(3, 47), -- Mixing Bowl
(4, 47), -- Measuring Cup
(7, 47), -- Wooden Spoon
(11, 47), -- Saucepan

-- Tom Kha Gai (Recipe ID: 48)
(1, 48), -- Knife
(2, 48), -- Cutting Board
(3, 48), -- Mixing Bowl
(4, 48), -- Measuring Cup
(7, 48), -- Wooden Spoon

-- Gazpacho Andaluz (Recipe ID: 49)
(1, 49), -- Knife
(2, 49), -- Cutting Board
(3, 49), -- Mixing Bowl
(4, 49), -- Measuring Cup
(7, 49), -- Wooden Spoon
(31, 49), -- Springform Pan
(32, 49), -- Electric Mixer

-- Moussaka with Eggplant (Recipe ID: 50)
(1, 50), -- Knife
(2, 50), -- Cutting Board
(3, 50), -- Mixing Bowl
(4, 50), -- Measuring Cup
(7, 50), -- Wooden Spoon
(11, 50), -- Saucepan
(16, 50); -- Tongs




INSERT INTO Ingredient_Recipe (ingredient_id, recipe_id, quantity) VALUES
-- Spaghetti Carbonara (Recipe ID: 1)
  (1, 1, 'To taste'), -- Salt
  (2, 1, 'To taste'), -- Pepper
  (7, 1, '3 large'), -- Eggs
  (25, 1, '400g'), -- Spaghetti
  (5, 1, '100g'), -- Butter
  (13, 1, '100g'), -- Cheese
-- Margherita Pizza (Recipe ID: 2)
  (11, 2, '200g'), -- Tomato
  (13, 2, '200g'), -- Cheese
  (4, 2, '500g'), -- Flour
  (1, 2, 'To taste'), -- Salt
  (3, 2, 'To taste'), -- Sugar
  (6, 2, '50ml'), -- Olive Oil
  (7, 2, '2'), -- Eggs
  (8, 2, '200ml'), -- Milk
-- Tacos al Pastor (Recipe ID: 3)
  (14, 3, '500g'), -- Chicken Breast
  (10, 3, '2'), -- Onion
  (11, 3, '4'), -- Tomato
  (29, 3, '50ml'), -- Gazpacho
  (6, 3, '30ml'), -- Olive Oil
  (1, 3, 'To taste'), -- Salt
  (2, 3, 'To taste'), -- Pepper
  (3, 3, 'To taste'), -- Sugar
-- Sushi Rolls (Recipe ID: 4)
  (14, 4, '300g'), -- Chicken Breast
  (3, 4, 'To taste'), -- Sugar
  (4, 4, '500g'), -- Flour
  (2, 4, 'To taste'), -- Pepper
  (1, 4, 'To taste'), -- Salt
  (5, 4, '100g'), -- Butter
  (13, 4, '100g'), -- Cheese
-- Kung Pao Chicken (Recipe ID: 5)
  (14, 5, '500g'), -- Chicken Breast
  (17, 5, '200g'), -- Rice
  (28, 5, '30g'), -- Paprika
  (10, 5, '2'), -- Onion
  (29, 5, '50ml'), -- Gazpacho
  (6, 5, '30ml'), -- Olive Oil
  (1, 5, 'To taste'), -- Salt
  (2, 5, 'To taste'), -- Pepper
  (3, 5, 'To taste'), -- Sugar
-- Coq au Vin (Recipe ID: 6)
  (14, 6, '500g'), -- Chicken Breast
  (17, 6, '200g'), -- Rice
  (29, 6, '50ml'), -- Gazpacho
  (6, 6, '30ml'), -- Olive Oil
  (1, 6, 'To taste'), -- Salt
  (2, 6, 'To taste'), -- Pepper
  (3, 6, 'To taste'), -- Sugar
-- Chicken Tikka Masala (Recipe ID: 7)
  (14, 7, '500g'), -- Chicken Breast
  (17, 7, '200g'), -- Rice
  (27, 7, '30g'), -- Oregano
  (10, 7, '2'), -- Onion
  (29, 7, '50ml'), -- Gazpacho
  (6, 7, '30ml'), -- Olive Oil
  (1, 7, 'To taste'), -- Salt
  (2, 7, 'To taste'), -- Pepper
  (3, 7, 'To taste'), -- Sugar
-- Pad Thai (Recipe ID: 8)
  (14, 8, '500g'), -- Chicken Breast
  (17, 8, '200g'), -- Rice
  (28, 8, '30g'), -- Paprika
  (10, 8, '2'), -- Onion
  (29, 8, '50ml'), -- Gazpacho
  (6, 8, '30ml'), -- Olive Oil
  (1, 8, 'To taste'), -- Salt
  (2, 8, 'To taste'), -- Pepper
  (3, 8, 'To taste'), -- Sugar
-- Paella (Recipe ID: 9)
  (14, 9, '500g'), -- Chicken Breast
  (17, 9, '200g'), -- Rice
  (28, 9, '30g'), -- Paprika
  (10, 9, '2'), -- Onion
  (29, 9, '50ml'), -- Gazpacho
  (6, 9, '30ml'), -- Olive Oil
  (1, 9, 'To taste'), -- Salt
  (2, 9, 'To taste'), -- Pepper
  (3, 9, 'To taste'), -- Sugar
-- Greek Salad (Recipe ID: 10)
  (11, 10, '2'), -- Tomato
  (40, 10, '50g'), -- Spinach
  (10, 10, '2'), -- Onion
  (1, 10, 'To taste'), -- Salt
  (2, 10, 'To taste'), -- Pepper
  (29, 10, '50ml'), -- Gazpacho
  (6, 10, '30ml'), -- Olive Oil
-- Feijoada (Recipe ID: 11)
  (14, 11, '500g'), -- Chicken Breast
  (29, 11, '50ml'), -- Gazpacho
  (6, 11, '30ml'), -- Olive Oil
  (1, 11, 'To taste'), -- Salt
  (2, 11, 'To taste'), -- Pepper
  (3, 11, 'To taste'), -- Sugar
-- Kimchi (Recipe ID: 12)
  (18, 12, '500g'), -- Lemon
  (19, 12, '50g'), -- Ginger
  (22, 12, '100g'), -- Vanilla
  (23, 12, '100ml'), -- Honey
  (24, 12, '100g'), -- Nutmeg
-- Falafel (Recipe ID: 13)
  (26, 13, '200g'), -- Rosemary
  (27, 13, '30g'), -- Oregano
  (28, 13, '30g'), -- Paprika
  (10, 13, '2'), -- Onion
  (29, 13, '50ml'), -- Gazpacho
  (6, 13, '30ml'), -- Olive Oil
  (1, 13, 'To taste'), -- Salt
  (2, 13, 'To taste'), -- Pepper
  (3, 13, 'To taste'), -- Sugar
-- Pho (Recipe ID: 14)
  (30, 14, '30ml'), -- Soy Sauce
  (10, 14, '2'), -- Onion
  (29, 14, '50ml'), -- Gazpacho
  (6, 14, '30ml'), -- Olive Oil
  (1, 14, 'To taste'), -- Salt
  (2, 14, 'To taste'), -- Pepper
  (3, 14, 'To taste'), -- Sugar
-- Kebab (Recipe ID: 15)
  (14, 15, '500g'), -- Chicken Breast
  (17, 15, '200g'), -- Rice
  (29, 15, '50ml'), -- Gazpacho
  (6, 15, '30ml'), -- Olive Oil
  (1, 15, 'To taste'), -- Salt
  (2, 15, 'To taste'), -- Pepper
  (3, 15, 'To taste'), -- Sugar
-- Couscous (Recipe ID: 16)
  (17, 16, '200g'), -- Rice
  (40, 16, '50g'), -- Spinach
  (29, 16, '50ml'), -- Gazpacho
  (6, 16, '30ml'), -- Olive Oil
  (1, 16, 'To taste'), -- Salt
  (2, 16, 'To taste'), -- Pepper
  (3, 16, 'To taste'), -- Sugar
-- Borscht (Recipe ID: 17)
  (11, 17, '2'), -- Tomato
  (10, 17, '2'), -- Onion
  (6, 17, '30ml'), -- Olive Oil
  (1, 17, 'To taste'), -- Salt
  (2, 17, 'To taste'), -- Pepper
  (3, 17, 'To taste'), -- Sugar
-- Ceviche (Recipe ID: 18)
  (14, 18, '500g'), -- Chicken Breast
  (29, 18, '50ml'), -- Gazpacho
  (6, 18, '30ml'), -- Olive Oil
  (1, 18, 'To taste'), -- Salt
  (2, 18, 'To taste'), -- Pepper
  (3, 18, 'To taste'), -- Sugar
-- Pavlova (Recipe ID: 19)
  (7, 19, '3 large'), -- Eggs
  (8, 19, '200ml'), -- Milk
  (3, 19, 'To taste'), -- Sugar
  (13, 19, '200g'), -- Cheese
  (4, 19, '500g'), -- Flour
  (1, 19, 'To taste'), -- Salt
  (2, 19, 'To taste'), -- Pepper
-- Swedish Meatballs (Recipe ID: 20)
  (15, 20, '500g'), -- Beef
  (28, 20, '30g'), -- Paprika
  (10, 20, '2'), -- Onion
  (29, 20, '50ml'), -- Gazpacho
  (6, 20, '30ml'), -- Olive Oil
  (1, 20, 'To taste'), -- Salt
  (2, 20, 'To taste'), -- Pepper
  (3, 20, 'To taste'), -- Sugar
-- Empanadas (Recipe ID: 21)
  (14, 21, '500g'), -- Chicken Breast
  (29, 21, '50ml'), -- Gazpacho
  (6, 21, '30ml'), -- Olive Oil
  (1, 21, 'To taste'), -- Salt
  (2, 21, 'To taste'), -- Pepper
  (3, 21, 'To taste'), -- Sugar
-- Lasagna (Recipe ID: 22)
  (11, 22, '200g'), -- Tomato
  (10, 22, '2'), -- Onion
  (13, 22, '200g'), -- Cheese
  (4, 22, '500g'), -- Flour
  (1, 22, 'To taste'), -- Salt
  (2, 22, 'To taste'), -- Pepper
  (7, 22, '3 large'), -- Eggs
-- Chicken Noodle Soup (Recipe ID: 23)
  (14, 23, '500g'), -- Chicken Breast
  (16, 23, '500g'), -- Carrot
  (10, 23, '2'), -- Onion
  (29, 23, '50ml'), -- Gazpacho
  (6, 23, '30ml'), -- Olive Oil
  (1, 23, 'To taste'), -- Salt
  (2, 23, 'To taste'), -- Pepper
  (3, 23, 'To taste'), -- Sugar
-- Beef Stroganoff (Recipe ID: 24)
  (15, 24, '500g'), -- Beef
  (17, 24, '200g'), -- Rice
  (10, 24, '2'), -- Onion
  (29, 24, '50ml'), -- Gazpacho
  (6, 24, '30ml'), -- Olive Oil
  (1, 24, 'To taste'), -- Salt
  (2, 24, 'To taste'), -- Pepper
  (3, 24, 'To taste'), -- Sugar
-- Beef Wellington (Recipe ID: 25)
  (15, 25, '500g'), -- Beef
  (4, 25, '500g'), -- Flour
  (1, 25, 'To taste'), -- Salt
  (2, 25, 'To taste'), -- Pepper
  (5, 25, '100g'), -- Butter
  (13, 25, '100g'), -- Cheese
-- Goulash (Recipe ID: 26)
  (15, 26, '500g'), -- Beef
  (10, 26, '2'), -- Onion
  (29, 26, '50ml'), -- Gazpacho
  (6, 26, '30ml'), -- Olive Oil
  (1, 26, 'To taste'), -- Salt
  (2, 26, 'To taste'), -- Pepper
  (3, 26, 'To taste'), -- Sugar
-- Beef Bourguignon (Recipe ID: 27)
  (15, 27, '500g'), -- Beef
  (10, 27, '2'), -- Onion
  (29, 27, '50ml'), -- Gazpacho
  (6, 27, '30ml'), -- Olive Oil
  (1, 27, 'To taste'), -- Salt
  (2, 27, 'To taste'), -- Pepper
  (3, 27, 'To taste'), -- Sugar
-- Chicken and Waffles (Recipe ID: 28)
  (14, 28, '500g'), -- Chicken Breast
  (4, 28, '500g'), -- Flour
  (1, 28, 'To taste'), -- Salt
  (2, 28, 'To taste'), -- Pepper
  (5, 28, '100g'), -- Butter
  (13, 28, '100g'), -- Cheese
-- Lobster Thermidor (Recipe ID: 29)
  (12, 29, '2'), -- Lobster
  (11, 29, '200g'), -- Tomato
  (13, 29, '200g'), -- Cheese
  (4, 29, '500g'), -- Flour
  (1, 29, 'To taste'), -- Salt
  (2, 29, 'To taste'), -- Pepper
  (5, 29, '100g'), -- Butter
-- Clam Chowder (Recipe ID: 30)
  (20, 30, '500g'), -- Clam
  (10, 30, '2'), -- Onion
  (29, 30, '50ml'), -- Gazpacho
  (6, 30, '30ml'), -- Olive Oil
  (1, 30, 'To taste'), -- Salt
  (2, 30, 'To taste'), -- Pepper
  (3, 30, 'To taste'), -- Sugar
-- New England Boiled Dinner (Recipe ID: 31)
  (20, 31, '500g'), -- Clam
  (10, 31, '2'), -- Onion
  (29, 31, '50ml'), -- Gazpacho
  (6, 31, '30ml'), -- Olive Oil
  (1, 31, 'To taste'), -- Salt
  (2, 31, 'To taste'), -- Pepper
  (3, 31, 'To taste'), -- Sugar
-- Peking Duck (Recipe ID: 32)
  (21, 32, '500g'), -- Duck
  (10, 32, '2'), -- Onion
  (29, 32, '50ml'), -- Gazpacho
  (6, 32, '30ml'), -- Olive Oil
  (1, 32, 'To taste'), -- Salt
  (2, 32, 'To taste'), -- Pepper
  (3, 32, 'To taste'), -- Sugar
-- Baked Alaska (Recipe ID: 33)
  (7, 33, '3 large'), -- Eggs
  (8, 33, '200ml'), -- Milk
  (3, 33, 'To taste'), -- Sugar
  (13, 33, '200g'), -- Cheese
  (4, 33, '500g'), -- Flour
  (1, 33, 'To taste'), -- Salt
  (2, 33, 'To taste'), -- Pepper
-- Tiramisu (Recipe ID: 34)
  (7, 34, '3 large'), -- Eggs
  (8, 34, '200ml'), -- Milk
  (3, 34, 'To taste'), -- Sugar
  (13, 34, '200g'), -- Cheese
  (4, 34, '500g'), -- Flour
  (1, 34, 'To taste'), -- Salt
  (2, 34, 'To taste'), -- Pepper
-- Croissants (Recipe ID: 35)
  (7, 35, '3 large'), -- Eggs
  (8, 35, '200ml'), -- Milk
  (3, 35, 'To taste'), -- Sugar
  (13, 35, '200g'), -- Cheese
  (4, 35, '500g'), -- Flour
  (1, 35, 'To taste'), -- Salt
  (2, 35, 'To taste'), -- Pepper
-- Fajitas (Recipe ID: 36)
  (14, 36, '500g'), -- Chicken Breast
  (10, 36, '2'), -- Onion
  (29, 36, '50ml'), -- Gazpacho
  (6, 36, '30ml'), -- Olive Oil
  (1, 36, 'To taste'), -- Salt
  (2, 36, 'To taste'), -- Pepper
  (3, 36, 'To taste'), -- Sugar
-- Ratatouille (Recipe ID: 37)
  (11, 37, '200g'), -- Tomato
  (10, 37, '2'), -- Onion
  (12, 37, '2'), -- Lobster
  (13, 37, '200g'), -- Cheese
  (4, 37, '500g'), -- Flour
  (1, 37, 'To taste'), -- Salt
  (2, 37, 'To taste'), -- Pepper
-- Beef Wellington (Recipe ID: 38)
  (15, 38, '500g'), -- Beef
  (4, 38, '500g'), -- Flour
  (1, 38, 'To taste'), -- Salt
  (2, 38, 'To taste'), -- Pepper
  (5, 38, '100g'), -- Butter
  (13, 38, '100g'), -- Cheese
-- Chicken and Waffles (Recipe ID: 39)
  (14, 39, '500g'), -- Chicken Breast
  (4, 39, '500g'), -- Flour
  (1, 39, 'To taste'), -- Salt
  (2, 39, 'To taste'), -- Pepper
  (5, 39, '100g'), -- Butter
  (13, 39, '100g'), -- Cheese
-- Lobster Thermidor (Recipe ID: 40)
  (12, 40, '2'), -- Lobster
  (11, 40, '200g'), -- Tomato
  (13, 40, '200g'), -- Cheese
  (4, 40, '500g'), -- Flour
  (1, 40, 'To taste'), -- Salt
  (2, 40, 'To taste'), -- Pepper
  (5, 40, '100g'), -- Butter
-- Clam Chowder (Recipe ID: 41)
  (20, 41, '500g'), -- Clam
  (10, 41, '2'), -- Onion
  (29, 41, '50ml'), -- Gazpacho
  (6, 41, '30ml'), -- Olive Oil
  (1, 41, 'To taste'), -- Salt
  (2, 41, 'To taste'), -- Pepper
  (3, 41, 'To taste'), -- Sugar
-- New England Boiled Dinner (Recipe ID: 42)
  (20, 42, '500g'), -- Clam
  (10, 42, '2'), -- Onion
  (29, 42, '50ml'), -- Gazpacho
  (6, 42, '30ml'), -- Olive Oil
  (1, 42, 'To taste'), -- Salt
  (2, 42, 'To taste'), -- Pepper
  (3, 42, 'To taste'), -- Sugar
-- Peking Duck (Recipe ID: 43)
  (21, 43, '500g'), -- Duck
  (10, 43, '2'), -- Onion
  (29, 43, '50ml'), -- Gazpacho
  (6, 43, '30ml'), -- Olive Oil
  (1, 43, 'To taste'), -- Salt
  (2, 43, 'To taste'), -- Pepper
  (3, 43, 'To taste'), -- Sugar
-- Baked Alaska (Recipe ID: 44)
  (7, 44, '3 large'), -- Eggs
  (8, 44, '200ml'), -- Milk
  (3, 44, 'To taste'), -- Sugar
  (13, 44, '200g'), -- Cheese
  (4, 44, '500g'), -- Flour
  (1, 44, 'To taste'), -- Salt
  (2, 44, 'To taste'), -- Pepper
-- Tiramisu (Recipe ID: 45)
  (7, 45, '3 large'), -- Eggs
  (8, 45, '200ml'), -- Milk
  (3, 45, 'To taste'), -- Sugar
  (13, 45, '200g'), -- Cheese
  (4, 45, '500g'), -- Flour
  (1, 45, 'To taste'), -- Salt
  (2, 45, 'To taste'), -- Pepper
-- Croissants (Recipe ID: 46)
  (7, 46, '3 large'), -- Eggs
  (8, 46, '200ml'), -- Milk
  (3, 46, 'To taste'), -- Sugar
  (13, 46, '200g'), -- Cheese
  (4, 46, '500g'), -- Flour
  (1, 46, 'To taste'), -- Salt
  (2, 46, 'To taste'), -- Pepper
-- Fajitas (Recipe ID: 47)
  (14, 47, '500g'), -- Chicken Breast
  (10, 47, '2'), -- Onion
  (29, 47, '50ml'), -- Gazpacho
  (6, 47, '30ml'), -- Olive Oil
  (1, 47, 'To taste'), -- Salt
  (2, 47, 'To taste'), -- Pepper
  (3, 47, 'To taste'), -- Sugar
-- Ratatouille (Recipe ID: 48)
  (11, 48, '200g'), -- Tomato
  (10, 48, '2'), -- Onion
  (12, 48, '2'), -- Lobster
  (13, 48, '200g'), -- Cheese
  (4, 48, '500g'), -- Flour
  (1, 48, 'To taste'), -- Salt
  (2, 48, 'To taste'), -- Pepper
-- Beef Wellington (Recipe ID: 49)
  (15, 49, '500g'), -- Beef
  (4, 49, '500g'), -- Flour
  (1, 49, 'To taste'), -- Salt
  (2, 49, 'To taste'), -- Pepper
  (5, 49, '100g'), -- Butter
  (13, 49, '100g'), -- Cheese
-- Chicken and Waffles (Recipe ID: 50)
  (14, 50, '500g'), -- Chicken Breast
  (4, 50, '500g'), -- Flour
  (1, 50, 'To taste'), -- Salt
  (2, 50, 'To taste'), -- Pepper
  (5, 50, '100g'), -- Butter
  (13, 50, '100g'); -- Cheese
