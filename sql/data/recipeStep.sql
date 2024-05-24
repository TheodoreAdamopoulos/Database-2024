INSERT INTO RecipeStep (recipe_id, step_no, description)
VALUES
  -- Spaghetti Carbonara
  (1, 1, 'Cook the pasta according to package instructions until al dente.'),
  (1, 2, 'In a bowl, whisk together eggs and grated cheese.'),
  (1, 3, 'Cook pancetta in a pan until crispy.'),
  (1, 4, 'Drain pasta and add to the pan with pancetta.'),
  (1, 5, 'Remove from heat and quickly stir in the egg and cheese mixture.'),
  (1, 6, 'Season with black pepper and serve immediately.'),

  -- Margherita Pizza
  (2, 1, 'Preheat the oven to 475°F (245°C).'),
  (2, 2, 'Roll out the pizza dough on a floured surface.'),
  (2, 3, 'Spread tomato sauce over the dough.'),
  (2, 4, 'Arrange mozzarella slices on top.'),
  (2, 5, 'Bake for 10-12 minutes until the crust is golden brown.'),
  (2, 6, 'Garnish with fresh basil leaves and serve.'),

  -- Lasagna
  (3, 1, 'Preheat the oven to 375°F (190°C).'),
  (3, 2, 'Cook lasagna noodles according to package instructions.'),
  (3, 3, 'In a skillet, cook ground meat until browned.'),
  (3, 4, 'Mix meat with tomato sauce and let simmer.'),
  (3, 5, 'Layer noodles, meat sauce, and cheese in a baking dish.'),
  (3, 6, 'Bake for 45 minutes, until the cheese is melted and bubbly.'),

  -- Risotto
  (4, 1, 'Heat broth in a pot and keep warm.'),
  (4, 2, 'In a pan, sauté onions in butter until translucent.'),
  (4, 3, 'Add rice and cook until lightly toasted.'),
  (4, 4, 'Gradually add broth, stirring constantly.'),
  (4, 5, 'Cook until rice is creamy and tender.'),
  (4, 6, 'Stir in Parmesan cheese and serve.'),

  -- Tacos
  (5, 1, 'Cook the meat with seasoning until fully cooked.'),
  (5, 2, 'Warm the tortillas in a pan or microwave.'),
  (5, 3, 'Assemble tacos by placing meat in tortillas.'),
  (5, 4, 'Top with chopped onions, cilantro, and salsa.'),
  (5, 5, 'Serve with lime wedges on the side.'),

  -- Guacamole
  (6, 1, 'Mash ripe avocados in a bowl.'),
  (6, 2, 'Add lime juice, chopped onions, and cilantro.'),
  (6, 3, 'Season with salt and mix well.'),
  (6, 4, 'Serve immediately with tortilla chips.'),

  -- Enchiladas
  (7, 1, 'Preheat the oven to 375°F (190°C).'),
  (7, 2, 'Cook meat with seasoning until fully cooked.'),
  (7, 3, 'Fill tortillas with meat and roll up.'),
  (7, 4, 'Place enchiladas in a baking dish and top with sauce.'),
  (7, 5, 'Sprinkle cheese over the top and bake for 20 minutes.'),

  -- Churros
  (8, 1, 'Heat oil in a deep fryer to 375°F (190°C).'),
  (8, 2, 'In a pot, bring water, butter, and salt to a boil.'),
  (8, 3, 'Stir in flour and cook until mixture forms a ball.'),
  (8, 4, 'Transfer dough to a piping bag with a star tip.'),
  (8, 5, 'Pipe dough into hot oil and fry until golden brown.'),
  (8, 6, 'Roll churros in cinnamon sugar and serve.'),

  -- Sushi
  (9, 1, 'Rinse the sushi rice under cold water until the water runs clear.'),
  (9, 2, 'Cook the rice according to the package instructions.'),
  (9, 3, 'Mix the rice vinegar, sugar, and salt, then stir into the cooked rice.'),
  (9, 4, 'Lay out a sheet of nori on a bamboo mat.'),
  (9, 5, 'Spread an even layer of rice on the nori, leaving a border at the top.'),
  (9, 6, 'Place fillings on the rice, then roll tightly using the bamboo mat.'),
  (9, 7, 'Slice the roll into pieces and serve with soy sauce.'),

  -- Ramen
  (10, 1, 'Cook noodles according to package instructions.'),
  (10, 2, 'In a pot, bring broth to a simmer.'),
  (10, 3, 'Add miso paste and soy sauce to the broth.'),
  (10, 4, 'Place cooked noodles in bowls.'),
  (10, 5, 'Pour broth over the noodles and add toppings.'),
  (10, 6, 'Serve immediately.'),

  -- Tempura
  (11, 1, 'Heat oil in a deep fryer to 375°F (190°C).'),
  (11, 2, 'Mix flour, egg, and ice water to make a batter.'),
  (11, 3, 'Dip seafood and vegetables into the batter.'),
  (11, 4, 'Fry in hot oil until golden and crispy.'),
  (11, 5, 'Drain on paper towels and serve with dipping sauce.'),

  -- Miso Soup
  (12, 1, 'Bring dashi stock to a simmer in a pot.'),
  (12, 2, 'Add miso paste and stir until dissolved.'),
  (12, 3, 'Add tofu cubes and wakame seaweed.'),
  (12, 4, 'Simmer for a few minutes, then serve.'),

  -- Kung Pao Chicken
  (13, 1, 'Marinate chicken in soy sauce and cornstarch.'),
  (13, 2, 'Stir-fry peanuts in a hot pan until toasted.'),
  (13, 3, 'Add chicken and cook until browned.'),
  (13, 4, 'Add vegetables and stir-fry until tender.'),
  (13, 5, 'Pour in sauce and cook until thickened.'),
  (13, 6, 'Serve hot with steamed rice.'),

  -- Sweet and Sour Pork
  (14, 1, 'Cut pork into bite-sized pieces and coat with cornstarch.'),
  (14, 2, 'Fry pork in hot oil until golden and crispy.'),
  (14, 3, 'In a pan, cook bell peppers and pineapple.'),
  (14, 4, 'Add cooked pork and pour in sweet and sour sauce.'),
  (14, 5, 'Stir until everything is coated and heated through.'),
  (14, 6, 'Serve with steamed rice.'),

  -- Fried Rice
  (15, 1, 'Heat oil in a large pan or wok.'),
  (15, 2, 'Add chopped vegetables and stir-fry until tender.'),
  (15, 3, 'Push vegetables to the side and add beaten eggs.'),
  (15, 4, 'Scramble the eggs until cooked.'),
  (15, 5, 'Add cooked rice and soy sauce.'),
  (15, 6, 'Stir everything together and cook until heated through.'),

  -- Dim Sum
  (16, 1, 'Prepare the fillings for each type of dim sum.'),
  (16, 2, 'Wrap fillings in dumpling wrappers.'),
  (16, 3, 'Steam dumplings in a bamboo steamer until cooked through.'),
  (16, 4, 'Serve with dipping sauces.'),

  -- Croissant
  (17, 1, 'Roll out the dough and fold in butter.'),
  (17, 2, 'Refrigerate the dough for 30 minutes.'),
  (17, 3, 'Roll out the dough again and fold.'),
  (17, 4, 'Repeat the rolling and folding process several times.'),
  (17, 5, 'Shape the dough into croissants.'),
  (17, 6, 'Let the croissants rise, then bake until golden brown.'),

  -- Coq au Vin
  (18, 1, 'Marinate the chicken in wine, garlic, and herbs overnight.'),
  (18, 2, 'Brown the chicken in a pot.'),
  (18, 3, 'Add onions, carrots, and mushrooms and cook until tender.'),
  (18, 4, 'Pour in the marinade and bring to a simmer.'),
  (18, 5, 'Cook until the chicken is tender and the sauce is thickened.'),
  (18, 6, 'Serve with crusty bread.'),

  -- Ratatouille
  (19, 1, 'Preheat the oven to 375°F (190°C).'),
  (19, 2, 'Slice eggplant, zucchini, and tomatoes.'),
  (19, 3, 'Layer vegetables in a baking dish.'),
  (19, 4, 'Drizzle with olive oil and sprinkle with herbs.'),
  (19, 5, 'Bake for 45 minutes until vegetables are tender.'),
  (19, 6, 'Serve hot or at room temperature.'),

  -- Creme Brulee
  (20, 1, 'Preheat the oven to 325°F (160°C).'),
  (20, 2, 'Whisk together egg yolks and sugar.'),
  (20, 3, 'Heat cream and vanilla in a saucepan.'),
  (20, 4, 'Slowly pour hot cream into the egg mixture.'),
  (20, 5, 'Pour mixture into ramekins and bake in a water bath.'),
  (20, 6, 'Chill, then sprinkle with sugar and caramelize with a torch.'),

  -- Butter Chicken
  (21, 1, 'Marinate chicken in yogurt and spices for at least 1 hour.'),
  (21, 2, 'Cook onions, garlic, and ginger in a pan until soft.'),
  (21, 3, 'Add spices and tomato paste and cook until fragrant.'),
  (21, 4, 'Add chicken and cook until browned.'),
  (21, 5, 'Stir in cream and simmer until chicken is cooked through.'),
  (21, 6, 'Serve with naan or rice.'),

  -- Samosa
  (22, 1, 'Prepare the filling with potatoes, peas, and spices.'),
  (22, 2, 'Roll out dough and cut into circles.'),
  (22, 3, 'Place filling on each circle and fold into a triangle.'),
  (22, 4, 'Seal the edges with water.'),
  (22, 5, 'Deep fry until golden and crispy.'),
  (22, 6, 'Serve with chutney.'),

  -- Biryani
  (23, 1, 'Marinate meat with yogurt and spices.'),
  (23, 2, 'Cook rice with whole spices until partially done.'),
  (23, 3, 'Layer rice and meat in a pot.'),
  (23, 4, 'Top with fried onions, saffron milk, and ghee.'),
  (23, 5, 'Cover and cook on low heat until rice and meat are fully cooked.'),
  (23, 6, 'Serve with raita.'),

  -- Palak Paneer
  (24, 1, 'Blanch spinach in boiling water, then blend into a puree.'),
  (24, 2, 'Fry paneer cubes until golden brown.'),
  (24, 3, 'Cook onions, garlic, and ginger in a pan until soft.'),
  (24, 4, 'Add spinach puree and spices and cook for a few minutes.'),
  (24, 5, 'Stir in cream and paneer cubes.'),
  (24, 6, 'Serve with naan or rice.'),

  -- Pad Thai
  (25, 1, 'Soak rice noodles in hot water until soft.'),
  (25, 2, 'In a pan, cook tofu and shrimp until done.'),
  (25, 3, 'Add eggs and scramble until cooked.'),
  (25, 4, 'Add noodles and sauce ingredients.'),
  (25, 5, 'Stir-fry until noodles are coated and heated through.'),
  (25, 6, 'Garnish with peanuts and lime wedges.'),

  -- Tom Yum Soup
  (26, 1, 'Bring broth to a boil in a pot.'),
  (26, 2, 'Add lemongrass, kaffir lime leaves, and galangal.'),
  (26, 3, 'Add mushrooms and cook until tender.'),
  (26, 4, 'Add shrimp and cook until pink.'),
  (26, 5, 'Stir in fish sauce, lime juice, and chili paste.'),
  (26, 6, 'Serve hot, garnished with cilantro.'),

  -- Green Curry
  (27, 1, 'Heat oil in a pan and fry green curry paste.'),
  (27, 2, 'Add coconut milk and bring to a simmer.'),
  (27, 3, 'Add meat and cook until done.'),
  (27, 4, 'Add vegetables and cook until tender.'),
  (27, 5, 'Stir in fish sauce and sugar.'),
  (27, 6, 'Serve with steamed rice.'),

  -- Mango Sticky Rice
  (28, 1, 'Cook sticky rice according to package instructions.'),
  (28, 2, 'In a pot, heat coconut milk, sugar, and salt.'),
  (28, 3, 'Mix coconut milk mixture into cooked rice.'),
  (28, 4, 'Slice ripe mangoes.'),
  (28, 5, 'Serve rice topped with mango slices.'),
  (28, 6, 'Drizzle with extra coconut milk if desired.'),

  -- Paella
  (29, 1, 'Heat oil in a large pan over medium heat.'),
  (29, 2, 'Add chopped onions, garlic, and bell peppers, and sauté until soft.'),
  (29, 3, 'Stir in the rice and cook for a few minutes.'),
  (29, 4, 'Add broth and saffron, and bring to a boil.'),
  (29, 5, 'Add seafood, chicken, and chorizo, then reduce heat to low.'),
  (29, 6, 'Cook without stirring until the rice is tender and a crust forms.'),
  (29, 7, 'Let rest for a few minutes before serving.'),

  -- Gazpacho
  (30, 1, 'Chop tomatoes, cucumbers, and bell peppers.'),
  (30, 2, 'Blend vegetables with garlic, olive oil, vinegar, and water.'),
  (30, 3, 'Season with salt and pepper.'),
  (30, 4, 'Chill in the refrigerator for at least 2 hours.'),
  (30, 5, 'Serve cold, garnished with croutons and diced vegetables.'),

  -- Tortilla Espanola
  (31, 1, 'Slice potatoes and onions thinly.'),
  (31, 2, 'Fry potatoes and onions in oil until tender.'),
  (31, 3, 'Beat eggs in a bowl and mix in potatoes and onions.'),
  (31, 4, 'Pour mixture into a pan and cook on low heat.'),
  (31, 5, 'Flip tortilla and cook until set.'),
  (31, 6, 'Serve warm or at room temperature.'),

  -- Churros
  (32, 1, 'Heat oil in a deep fryer to 375°F (190°C).'),
  (32, 2, 'In a pot, bring water, butter, and salt to a boil.'),
  (32, 3, 'Stir in flour and cook until mixture forms a ball.'),
  (32, 4, 'Transfer dough to a piping bag with a star tip.'),
  (32, 5, 'Pipe dough into hot oil and fry until golden brown.'),
  (32, 6, 'Roll churros in cinnamon sugar and serve.'),

  -- Moussaka
  (33, 1, 'Preheat the oven to 375°F (190°C).'),
  (33, 2, 'Slice eggplants and potatoes and fry until golden.'),
  (33, 3, 'Cook ground meat with onions and spices.'),
  (33, 4, 'Layer potatoes, meat, and eggplants in a baking dish.'),
  (33, 5, 'Top with béchamel sauce.'),
  (33, 6, 'Bake for 45 minutes until golden brown.'),

  -- Tzatziki
  (34, 1, 'Grate cucumber and squeeze out excess water.'),
  (34, 2, 'Mix cucumber with yogurt, garlic, and dill.'),
  (34, 3, 'Season with salt and pepper.'),
  (34, 4, 'Chill in the refrigerator before serving.'),

  -- Souvlaki
  (35, 1, 'Marinate meat in olive oil, lemon juice, and herbs.'),
  (35, 2, 'Skewer the meat onto wooden sticks.'),
  (35, 3, 'Grill skewers until meat is cooked through.'),
  (35, 4, 'Serve with pita bread and tzatziki.'),

  -- Baklava
  (36, 1, 'Preheat the oven to 350°F (175°C).'),
  (36, 2, 'Layer filo dough in a baking dish, brushing each layer with butter.'),
  (36, 3, 'Spread a mixture of nuts and cinnamon between layers.'),
  (36, 4, 'Cut into squares and bake for 45 minutes.'),
  (36, 5, 'Pour syrup over the hot baklava and let it soak in.'),

-- Feijoada
(37, 1, 'Soak black beans in water overnight.'),
(37, 2, 'Cook beans with meat, onions, and garlic in a pot.'),
(37, 3, 'Simmer until beans and meat are tender.'),
(37, 4, 'Serve hot with rice, collard greens, and orange slices.'),

-- Brigadeiro
(38, 1, 'Mix condensed milk, cocoa powder, and butter in a pan.'),
(38, 2, 'Cook over low heat, stirring constantly, until thickened.'),
(38, 3, 'Remove from heat and let cool slightly.'),
(38, 4, 'Form into small balls and roll in chocolate sprinkles.'),
(38, 5, 'Chill in the refrigerator until set.'),

-- Pão de Queijo
(39, 1, 'Preheat the oven to 375°F (190°C).'),
(39, 2, 'Bring milk, oil, and salt to a boil in a saucepan.'),
(39, 3, 'Stir in tapioca flour until a dough forms.'),
(39, 4, 'Mix in eggs and cheese until well combined.'),
(39, 5, 'Drop spoonfuls of dough onto a baking sheet.'),
(39, 6, 'Bake for 15-20 minutes until puffed and golden brown.'),

-- Moqueca
(40, 1, 'Marinate fish with lime juice and spices.'),
(40, 2, 'Cook onions, peppers, and tomatoes in a pot until soft.'),
(40, 3, 'Layer fish, vegetables, and coconut milk in the pot.'),
(40, 4, 'Simmer until fish is cooked through and flavors meld.'),
(40, 5, 'Serve hot with rice and sliced lime.'),

-- Kimchi
(41, 1, 'Cut cabbage into pieces and salt generously.'),
(41, 2, 'Let sit for a few hours, then rinse and drain.'),
(41, 3, 'Mix with garlic, ginger, chili powder, and fish sauce.'),
(41, 4, 'Pack mixture into a jar and let ferment for a few days.'),
(41, 5, 'Store in the refrigerator.'),

-- Bibimbap
(42, 1, 'Cook rice according to package instructions.'),
(42, 2, 'Prepare various vegetables by slicing or julienning them.'),
(42, 3, 'Cook meat with garlic and soy sauce until done.'),
(42, 4, 'Fry eggs until whites are set but yolks are still runny.'),
(42, 5, 'Assemble bowls with rice, vegetables, meat, and eggs.'),
(42, 6, 'Serve with spicy gochujang sauce.'),

-- Bulgogi
(43, 1, 'Slice beef thinly and marinate in soy sauce, sugar, and garlic.'),
(43, 2, 'Cook beef in a hot pan until browned and caramelized.'),
(43, 3, 'Serve with rice, lettuce leaves, and dipping sauces.'),

-- Tteokbokki
(44, 1, 'Soak rice cakes in water for 30 minutes.'),
(44, 2, 'In a pot, simmer rice cakes in spicy sauce until tender.'),
(44, 3, 'Add fish cakes and cook until heated through.'),
(44, 4, 'Serve hot, garnished with sesame seeds and green onions.'),

-- Hummus
(45, 1, 'Blend chickpeas, tahini, lemon juice, and garlic until smooth.'),
(45, 2, 'Season with salt and cumin.'),
(45, 3, 'Drizzle with olive oil and sprinkle with paprika.'),
(45, 4, 'Serve with pita bread or vegetables.'),

-- Falafel
(46, 1, 'Blend chickpeas, onions, garlic, and herbs until smooth.'),
(46, 2, 'Form mixture into balls and flatten slightly.'),
(46, 3, 'Fry falafel in hot oil until golden brown and crispy.'),
(46, 4, 'Serve with tahini sauce and pita bread.'),

-- Tabbouleh
(47, 1, 'Soak bulgur wheat in water until softened.'),
(47, 2, 'Mix bulgur with chopped parsley, tomatoes, and onions.'),
(47, 3, 'Dress salad with olive oil, lemon juice, and salt.'),
(47, 4, 'Refrigerate for at least 1 hour before serving.'),

-- Kibbeh
(48, 1, 'Mix bulgur with minced onions, spices, and ground meat.'),
(48, 2, 'Form mixture into balls or patties.'),
(48, 3, 'Fry kibbeh in hot oil until browned and crispy.'),
(48, 4, 'Serve with yogurt sauce and lemon wedges.'),

-- Pho
(49, 1, 'Bring beef broth to a boil in a pot.'),
(49, 2, 'Add spices like star anise, cinnamon, and cloves, and simmer for 15-20 minutes to infuse flavors.'),
(49, 3, 'Meanwhile, prepare rice noodles according to package instructions.'),
(49, 4, 'Slice raw beef thinly and place it on top of cooked noodles in serving bowls.'),
(49, 5, 'Pour hot broth over the beef and noodles to cook the beef.'),
(49, 6, 'Serve with bean sprouts, basil, lime wedges, and chili sauce on the side.'),

-- Banh Mi
(50, 1, 'Slice a baguette in half and spread mayonnaise on both sides.'),
(50, 2, 'Layer with sliced pork, pâté, pickled vegetables, and cilantro.'),
(50, 3, 'Drizzle with soy sauce and sriracha sauce, if desired.'),
(50, 4, 'Serve as a sandwich or wrap in parchment paper for portability.'),

-- Spring Rolls
(51, 1, 'Soak rice paper wrappers in warm water until pliable.'),
(51, 2, 'Place shrimp, vegetables, and herbs on the bottom third of the wrapper.'),
(51, 3, 'Fold the bottom of the wrapper over the filling, then fold in the sides, and roll tightly.'),
(51, 4, 'Serve with peanut dipping sauce or sweet chili sauce.'),

-- Bun Cha
(52, 1, 'Marinate pork in a mixture of fish sauce, sugar, and garlic.'),
(52, 2, 'Grill pork until cooked through and slightly caramelized.'),
(52, 3, 'Cook rice noodles according to package instructions.'),
(52, 4, 'Serve grilled pork over noodles with herbs and dipping sauce on the side.'),
(52, 5, 'Enjoy with fresh vegetables like lettuce, cucumber, and bean sprouts.'),

-- Kebabs
(53, 1, 'Marinate meat or vegetables in olive oil, lemon juice, and spices for at least 30 minutes.'),
(53, 2, 'Skewer marinated ingredients onto metal or wooden sticks.'),
(53, 3, 'Grill kebabs over medium-high heat until cooked to desired doneness.'),
(53, 4, 'Serve with rice, salad, or flatbread, and tzatziki sauce.'),

-- Baklava
(54, 1, 'Preheat the oven to 350°F (175°C).'),
(54, 2, 'Layer filo dough in a baking dish, brushing each layer with butter.'),
(54, 3, 'Spread a mixture of nuts and cinnamon between layers.'),
(54, 4, 'Cut into squares or diamonds before baking.'),
(54, 5, 'Bake for 45 minutes until golden brown and crispy.'),
(54, 6, 'Pour syrup over the hot baklava and let it soak in.'),
(54, 7, 'Allow baklava to cool before serving.'),

-- Lahmacun
(55, 1, 'Preheat the oven to 500°F (260°C).'),
(55, 2, 'Spread a thin layer of spiced ground meat mixture on rolled-out dough.'),
(55, 3, 'Bake lahmacun in the oven for about 5-10 minutes until the edges are crispy and the meat is cooked through.'),
(55, 4, 'Serve with fresh lemon wedges, parsley, and sliced vegetables.'),

-- Turkish Delight
(56, 1, 'Mix sugar, cornstarch, and water in a saucepan.'),
(56, 2, 'Cook over medium heat until the mixture thickens and turns translucent.'),
(56, 3, 'Stir in flavorings like rosewater or lemon juice and food coloring, if desired.'),
(56, 4, 'Pour the mixture into a pan lined with powdered sugar and let it set.'),
(56, 5, 'Cut into squares or diamonds and toss in powdered sugar to coat.'),

-- Borscht
(57, 1, 'Heat oil in a pot and sauté onions, carrots, and celery until softened.'),
(57, 2, 'Add chopped beets, potatoes, and cabbage to the pot.'),
(57, 3, 'Pour in beef broth and simmer until vegetables are tender.'),
(57, 4, 'Stir in vinegar, sugar, and salt to taste.'),
(57, 5, 'Serve hot with a dollop of sour cream and fresh dill.'),

-- Pelmeni
(58, 1, 'Make a dough from flour, eggs, water, and salt.'),
(58, 2, 'Roll out the dough thinly and cut into circles.'),
(58, 3, 'Place a spoonful of meat filling on each circle.'),
(58, 4, 'Fold the dough over the filling and pinch to seal tightly.'),
(58, 5, 'Boil pelmeni in salted water until they float to the surface.'),
(58, 6, 'Serve hot with sour cream or melted butter.'),

-- Blini
(59, 1, 'Mix flour, eggs, milk, and salt to make a thin batter.'),
(59, 2, 'Heat a lightly greased skillet over medium heat.'),
(59, 3, 'Pour a small amount of batter into the skillet and swirl to coat the bottom.'),
(59, 4, 'Cook until the edges are lightly browned, then flip and cook the other side.'),
(59, 5, 'Serve blini warm with sour cream, caviar, or jam.'),

-- Beef Stroganoff
(60, 1, 'Slice beef thinly against the grain and season with salt and pepper.'),
(60, 2, 'Heat oil in a skillet and brown beef on all sides, then remove from the skillet.'),
(60, 3, 'Sauté onions and mushrooms in the same skillet until softened and browned.'),
(60, 4, 'Stir in flour and cook until lightly golden, then add beef broth and bring to a simmer.'),
(60, 5, 'Return beef to the skillet and simmer until heated through and sauce thickens.'),
(60, 6, 'Stir in sour cream and serve over cooked egg noodles or rice.'),
(60, 7, 'Garnish with chopped parsley, if desired.') ;