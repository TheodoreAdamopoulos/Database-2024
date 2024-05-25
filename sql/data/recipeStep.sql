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

  -- Tacos al Pastor
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

  -- Chiles Rellenos
  (8, 1, 'Roast the poblano peppers until charred, then peel.'),
  (8, 2, 'Cut a slit in each pepper and remove seeds.'),
  (8, 3, 'Stuff peppers with cheese.'),
  (8, 4, 'Dip in batter and fry until golden brown.'),
  (8, 5, 'Serve with salsa and rice.'),

  -- Sushi Rolls
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

  -- Okonomiyaki
  (12, 1, 'In a bowl, mix flour, eggs, and dashi to make a batter.'),
  (12, 2, 'Add shredded cabbage and other desired ingredients.'),
  (12, 3, 'Heat oil in a pan and pour in the batter.'),
  (12, 4, 'Cook until both sides are browned and cooked through.'),
  (12, 5, 'Drizzle with okonomiyaki sauce and mayonnaise.'),
  (12, 6, 'Sprinkle with bonito flakes and serve.'),

  -- Kung Pao Chicken
  (13, 1, 'Marinate chicken in soy sauce and cornstarch.'),
  (13, 2, 'Stir-fry peanuts in a hot pan until toasted.'),
  (13, 3, 'Add chicken and cook until browned.'),
  (13, 4, 'Add vegetables and stir-fry until tender.'),
  (13, 5, 'Pour in sauce and cook until thickened.'),
  (13, 6, 'Serve hot with steamed rice.'),

  -- Dumplings
  (14, 1, 'Prepare the filling with meat and vegetables.'),
  (14, 2, 'Place filling in the center of each wrapper.'),
  (14, 3, 'Fold and seal the dumplings.'),
  (14, 4, 'Steam or fry the dumplings until cooked through.'),
  (14, 5, 'Serve with dipping sauce.'),

  -- Mapo Tofu
  (15, 1, 'Cook ground meat in a pan until browned.'),
  (15, 2, 'Add tofu cubes and cook gently.'),
  (15, 3, 'Stir in spicy sauce and simmer.'),
  (15, 4, 'Serve hot with steamed rice.'),

  -- Peking Duck
  (16, 1, 'Marinate the duck with spices.'),
  (16, 2, 'Roast the duck in the oven until crispy.'),
  (16, 3, 'Slice the duck and serve with pancakes, spring onions, and hoisin sauce.'),

  -- Coq au Vin
  (17, 1, 'Marinate the chicken in wine, garlic, and herbs overnight.'),
  (17, 2, 'Brown the chicken in a pot.'),
  (17, 3, 'Add onions, carrots, and mushrooms and cook until tender.'),
  (17, 4, 'Pour in the marinade and bring to a simmer.'),
  (17, 5, 'Cook until the chicken is tender and the sauce is thickened.'),
  (17, 6, 'Serve with crusty bread.'),

  -- Ratatouille
  (18, 1, 'Preheat the oven to 375°F (190°C).'),
  (18, 2, 'Slice eggplant, zucchini, and tomatoes.'),
  (18, 3, 'Layer vegetables in a baking dish.'),
  (18, 4, 'Drizzle with olive oil and sprinkle with herbs.'),
  (18, 5, 'Bake for 45 minutes until vegetables are tender.'),
  (18, 6, 'Serve hot or at room temperature.'),

  -- Boeuf Bourguignon
  (19, 1, 'Brown the beef in a pot.'),
  (19, 2, 'Add onions, carrots, and garlic and cook until tender.'),
  (19, 3, 'Pour in red wine and broth and bring to a simmer.'),
  (19, 4, 'Add mushrooms and cook until beef is tender.'),
  (19, 5, 'Serve hot with crusty bread.'),

  -- Croissants
  (20, 1, 'Roll out the dough and fold in butter.'),
  (20, 2, 'Refrigerate the dough for 30 minutes.'),
  (20, 3, 'Roll out the dough again and fold.'),
  (20, 4, 'Repeat the rolling and folding process several times.'),
  (20, 5, 'Shape the dough into croissants.'),
  (20, 6, 'Let the croissants rise, then bake until golden brown.'),

  -- Chicken Tikka Masala
  (21, 1, 'Marinate chicken in yogurt and spices for at least 1 hour.'),
  (21, 2, 'Cook onions, garlic, and ginger in a pan until soft.'),
  (21, 3, 'Add spices and tomato paste and cook until fragrant.'),
  (21, 4, 'Add chicken and cook until browned.'),
  (21, 5, 'Stir in cream and simmer until chicken is cooked through.'),
  (21, 6, 'Serve with naan or rice.'),

  -- Palak Paneer
  (22, 1, 'Blanch spinach in boiling water, then blend into a puree.'),
  (22, 2, 'Fry paneer cubes until golden brown.'),
  (22, 3, 'Cook onions, garlic, and ginger in a pan until soft.'),
  (22, 4, 'Add spinach puree and spices and cook for a few minutes.'),
  (22, 5, 'Stir in cream and paneer cubes.'),
  (22, 6, 'Serve with naan or rice.'),

  -- Aloo Gobi
  (23, 1, 'Heat oil in a pan and fry potatoes until golden.'),
  (23, 2, 'Add cauliflower and cook until tender.'),
  (23, 3, 'Add spices and cook for a few minutes.'),
  (23, 4, 'Stir in tomatoes and cook until heated through.'),
  (23, 5, 'Serve hot, garnished with cilantro.'),

  -- Pad Thai
  (24, 1, 'Soak rice noodles in hot water until soft.'),
  (24, 2, 'In a pan, cook tofu and shrimp until done.'),
  (24, 3, 'Add eggs and scramble until cooked.'),
  (24, 4, 'Add noodles and sauce ingredients.'),
  (24, 5, 'Stir-fry until noodles are coated and heated through.'),
  (24, 6, 'Garnish with peanuts and lime wedges.'),

  -- Tom Yum Goong
  (25, 1, 'Bring broth to a boil in a pot.'),
  (25, 2, 'Add lemongrass, kaffir lime leaves, and galangal.'),
  (25, 3, 'Add mushrooms and cook until tender.'),
  (25, 4, 'Add shrimp and cook until pink.'),
  (25, 5, 'Stir in fish sauce, lime juice, and chili paste.'),
  (25, 6, 'Serve hot, garnished with cilantro.'),

  -- Green Curry
  (26, 1, 'Heat oil in a pan and fry green curry paste.'),
  (26, 2, 'Add coconut milk and bring to a simmer.'),
  (26, 3, 'Add meat and cook until done.'),
  (26, 4, 'Add vegetables and cook until tender.'),
  (26, 5, 'Stir in fish sauce and sugar.'),
  (26, 6, 'Serve with steamed rice.'),

  -- Som Tum
  (27, 1, 'Shred green papaya and place in a bowl.'),
  (27, 2, 'Add tomatoes, carrots, and peanuts.'),
  (27, 3, 'Mix in fish sauce, lime juice, and chili.'),
  (27, 4, 'Toss everything together until well combined.'),
  (27, 5, 'Serve immediately.'),

  -- Pad See Ew
  (28, 1, 'Soak rice noodles in hot water until soft.'),
  (28, 2, 'In a pan, cook meat until browned.'),
  (28, 3, 'Add garlic and Chinese broccoli and cook until tender.'),
  (28, 4, 'Add noodles and sauce ingredients.'),
  (28, 5, 'Stir-fry until noodles are coated and heated through.'),
  (28, 6, 'Serve hot.'),

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

  -- Tortilla Española
  (31, 1, 'Slice potatoes and onions thinly.'),
  (31, 2, 'Fry potatoes and onions in oil until tender.'),
  (31, 3, 'Beat eggs in a bowl and mix in potatoes and onions.'),
  (31, 4, 'Pour mixture into a pan and cook on low heat.'),
  (31, 5, 'Flip tortilla and cook until set.'),
  (31, 6, 'Serve warm or at room temperature.'),

  -- Patatas Bravas
  (32, 1, 'Peel and cut potatoes into bite-sized pieces.'),
  (32, 2, 'Fry potatoes until crispy and golden brown.'),
  (32, 3, 'In a pan, cook tomatoes, onions, and garlic for the sauce.'),
  (32, 4, 'Add paprika and other spices to the sauce.'),
  (32, 5, 'Pour sauce over fried potatoes and serve.'),

  -- Moussaka
  (33, 1, 'Preheat the oven to 375°F (190°C).'),
  (33, 2, 'Slice eggplants and potatoes and fry until golden.'),
  (33, 3, 'Cook ground meat with onions and spices.'),
  (33, 4, 'Layer potatoes, meat, and eggplants in a baking dish.'),
  (33, 5, 'Top with béchamel sauce.'),
  (33, 6, 'Bake for 45 minutes until golden brown.'),

  -- Greek Salad
  (34, 1, 'Chop tomatoes, cucumbers, and onions.'),
  (34, 2, 'Mix vegetables with olives and feta cheese.'),
  (34, 3, 'Dress salad with olive oil and oregano.'),
  (34, 4, 'Serve chilled.'),

  -- Spanakopita
  (35, 1, 'Preheat the oven to 350°F (175°C).'),
  (35, 2, 'Cook spinach and mix with feta cheese and herbs.'),
  (35, 3, 'Layer filo dough in a baking dish, brushing each layer with butter.'),
  (35, 4, 'Spread spinach mixture between layers.'),
  (35, 5, 'Cut into squares and bake until golden brown.'),

  -- Souvlaki
  (36, 1, 'Marinate meat in olive oil, lemon juice, and herbs.'),
  (36, 2, 'Skewer the meat onto wooden sticks.'),
  (36, 3, 'Grill skewers until meat is cooked through.'),
  (36, 4, 'Serve with pita bread and tzatziki.'),

  -- Feijoada
  (37, 1, 'Soak black beans in water overnight.'),
  (37, 2, 'Cook beans with meat, onions, and garlic in a pot.'),
  (37, 3, 'Simmer until beans and meat are tender.'),
  (37, 4, 'Serve hot with rice, collard greens, and orange slices.'),



  -- Pão de Queijo
  (38, 1, 'Preheat the oven to 375°F (190°C).'),
  (38, 2, 'Bring milk, oil, and salt to a boil in a saucepan.'),
  (38, 3, 'Stir in tapioca flour until a dough forms.'),
  (38, 4, 'Mix in eggs and cheese until well combined.'),
  (38, 5, 'Drop spoonfuls of dough onto a baking sheet.'),
  (38, 6, 'Bake for 15-20 minutes until puffed and golden brown.'),

  -- Moqueca
  (39, 1, 'Marinate fish with lime juice and spices.'),
  (39, 2, 'Cook onions, peppers, and tomatoes in a pot until soft.'),
  (39, 3, 'Layer fish, vegetables, and coconut milk in the pot.'),
  (39, 4, 'Simmer until fish is cooked through and flavors meld.'),
  (39, 5, 'Serve hot with rice and sliced lime.'),

  -- Caipirinha
  (40, 1, 'Cut lime into wedges and muddle with sugar in a glass.'),
  (40, 2, 'Fill the glass with ice.'),
  (40, 3, 'Pour in cachaça and stir well.'),
  (40, 4, 'Garnish with a lime wedge and serve.'),

  -- Bibimbap
  (41, 1, 'Cook rice according to package instructions.'),
  (41, 2, 'Prepare various vegetables by slicing or julienning them.'),
  (41, 3, 'Cook meat with garlic and soy sauce until done.'),
  (41, 4, 'Fry eggs until whites are set but yolks are still runny.'),
  (41, 5, 'Assemble bowls with rice, vegetables, meat, and eggs.'),
  (41, 6, 'Serve with spicy gochujang sauce.'),

  -- Kimchi
  (42, 1, 'Cut cabbage into pieces and salt generously.'),
  (42, 2, 'Let sit for a few hours, then rinse and drain.'),
  (42, 3, 'Mix with garlic, ginger, chili powder, and fish sauce.'),
  (42, 4, 'Pack mixture into a jar and let ferment for a few days.'),
  (42, 5, 'Store in the refrigerator.'),

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

  -- Shawarma
  (48, 1, 'Marinate meat with yogurt, garlic, and spices.'),
  (48, 2, 'Cook meat on a grill or in a pan until browned.'),
  (48, 3, 'Slice meat thinly and serve in pita bread with vegetables.'),

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

  -- Goi Cuon
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

  -- Kebab
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

  -- Menemen
  (55, 1, 'Heat oil in a pan and sauté onions and green peppers until soft.'),
  (55, 2, 'Add tomatoes and cook until they start to break down.'),
  (55, 3, 'Beat eggs and pour into the pan.'),
  (55, 4, 'Stir gently until eggs are cooked to desired consistency.'),
  (55, 5, 'Season with salt and pepper.'),
  (55, 6, 'Serve hot with bread.'),

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

  -- Beef Stroganoff
  (59, 1, 'Slice beef thinly against the grain and season with salt and pepper.'),
  (59, 2, 'Heat oil in a skillet and brown beef on all sides, then remove from the skillet.'),
  (59, 3, 'Sauté onions and mushrooms in the same skillet until softened and browned.'),
  (59, 4, 'Stir in flour and cook until lightly golden, then add beef broth and bring to a simmer.'),
  (59, 5, 'Return beef to the skillet and simmer until heated through and sauce thickens.'),
  (59, 6, 'Stir in sour cream and serve over cooked egg noodles or rice.'),
  (59, 7, 'Garnish with chopped parsley, if desired.'),

  -- Tagine
  (61, 1, 'Marinate meat with spices for at least 1 hour.'),
  (61, 2, 'Heat oil in a tagine or heavy pot.'),
  (61, 3, 'Cook onions and garlic until soft.'),
  (61, 4, 'Add meat and brown on all sides.'),
  (61, 5, 'Add vegetables, dried fruits, and broth.'),
  (61, 6, 'Cover and simmer until meat is tender.'),
  (61, 7, 'Garnish with fresh herbs and serve with couscous.'),

  -- Couscous
  (62, 1, 'Bring water or broth to a boil.'),
  (62, 2, 'Add couscous, cover, and remove from heat.'),
  (62, 3, 'Let sit for 5 minutes, then fluff with a fork.'),
  (62, 4, 'Stir in butter or olive oil and season with salt.'),
  (62, 5, 'Serve with meat or vegetables.'),

  -- Harira
  (63, 1, 'Heat oil in a pot and sauté onions, celery, and garlic until soft.'),
  (63, 2, 'Add tomatoes, lentils, and chickpeas.'),
  (63, 3, 'Pour in broth and bring to a boil.'),
  (63, 4, 'Add spices and simmer until lentils are tender.'),
  (63, 5, 'Stir in fresh herbs and serve hot.'),

  -- Pastilla
  (64, 1, 'Cook meat with onions and spices until tender.'),
  (64, 2, 'Mix cooked meat with beaten eggs and almonds.'),
  (64, 3, 'Layer filo dough in a baking dish, brushing each layer with butter.'),
  (64, 4, 'Spread meat mixture between layers.'),
  (64, 5, 'Bake until golden brown and crispy.'),
  (64, 6, 'Dust with powdered sugar and cinnamon before serving.'),

  -- Ceviche
  (65, 1, 'Cut fish into small cubes.'),
  (65, 2, 'Marinate fish in lime juice for at least 30 minutes.'),
  (65, 3, 'Add chopped onions, cilantro, and chili peppers.'),
  (65, 4, 'Season with salt and mix well.'),
  (65, 5, 'Serve chilled, garnished with avocado slices.'),

  -- Lomo Saltado
  (66, 1, 'Marinate beef with soy sauce, vinegar, and spices.'),
  (66, 2, 'Stir-fry beef in a hot pan until browned.'),
  (66, 3, 'Add onions, tomatoes, and aji amarillo.'),
  (66, 4, 'Cook until vegetables are tender.'),
  (66, 5, 'Serve with rice and fried potatoes.'),

  -- Aji de Gallina
  (67, 1, 'Cook chicken in water with vegetables and spices.'),
  (67, 2, 'Shred cooked chicken and set aside.'),
  (67, 3, 'Blend bread, milk, and walnuts to make a sauce.'),
  (67, 4, 'Cook sauce with aji amarillo and spices.'),
  (67, 5, 'Add shredded chicken to the sauce.'),
  (67, 6, 'Serve with rice and boiled potatoes.'),

  -- Anticuchos
  (68, 1, 'Marinate meat in vinegar, garlic, and spices.'),
  (68, 2, 'Skewer marinated meat onto wooden sticks.'),
  (68, 3, 'Grill skewers until meat is cooked through.'),
  (68, 4, 'Serve with boiled potatoes and aji sauce.'),

  -- Doro Wat
  (69, 1, 'Marinate chicken in lemon juice and spices.'),
  (69, 2, 'Cook onions, garlic, and ginger in a pot until soft.'),
  (69, 3, 'Add berbere spice mix and cook until fragrant.'),
  (69, 4, 'Add chicken and simmer until cooked through.'),
  (69, 5, 'Serve hot with injera.'),

  -- Injera
  (70, 1, 'Mix teff flour with water to make a batter.'),
  (70, 2, 'Let the batter ferment for a few days.'),
  (70, 3, 'Cook batter on a hot griddle like a pancake.'),
  (70, 4, 'Serve with stews or salads.'),

  -- Misir Wot
  (71, 1, 'Cook lentils in water until tender.'),
  (71, 2, 'In a pot, cook onions, garlic, and ginger until soft.'),
  (71, 3, 'Add berbere spice mix and cook until fragrant.'),
  (71, 4, 'Add cooked lentils and simmer until thickened.'),
  (71, 5, 'Serve hot with injera.'),

  -- Shiro
  (72, 1, 'Cook chickpea flour with water until thickened.'),
  (72, 2, 'In a pot, cook onions, garlic, and ginger until soft.'),
  (72, 3, 'Add berbere spice mix and cook until fragrant.'),
  (72, 4, 'Add chickpea mixture and simmer until flavors meld.'),
  (72, 5, 'Serve hot with injera.'),

  -- Swedish Meatballs
  (73, 1, 'Mix ground meat with breadcrumbs, eggs, and spices.'),
  (73, 2, 'Form mixture into small meatballs.'),
  (73, 3, 'Brown meatballs in a skillet until cooked through.'),
  (73, 4, 'In the same skillet, make a sauce with cream and broth.'),
  (73, 5, 'Return meatballs to the skillet and simmer in the sauce.'),
  (73, 6, 'Serve with mashed potatoes and lingonberry sauce.'),

  -- Gravad Lax
  (74, 1, 'Mix salt, sugar, and dill.'),
  (74, 2, 'Rub the mixture over the salmon fillet.'),
  (74, 3, 'Wrap the fillet in plastic wrap and refrigerate for a few days.'),
  (74, 4, 'Slice thinly and serve with mustard sauce.'),

  -- Köttbullar
  (75, 1, 'Mix ground meat with breadcrumbs, eggs, and spices.'),
  (75, 2, 'Form mixture into small meatballs.'),
  (75, 3, 'Brown meatballs in a skillet until cooked through.'),
  (75, 4, 'In the same skillet, make a sauce with cream and broth.'),
  (75, 5, 'Return meatballs to the skillet and simmer in the sauce.'),
  (75, 6, 'Serve with mashed potatoes and lingonberry sauce.'),

  -- Smörgåsbord
  (76, 1, 'Arrange a variety of cold and hot dishes on a table.'),
  (76, 2, 'Include items like herring, cured salmon, meatballs, potatoes, salads, and bread.'),
  (76, 3, 'Serve buffet-style, allowing guests to help themselves.'),

  -- Pavlova
  (77, 1, 'Preheat the oven to 300°F (150°C).'),
  (77, 2, 'Whip egg whites and sugar to stiff peaks.'),
  (77, 3, 'Spread the meringue onto a baking sheet.'),
  (77, 4, 'Bake for 1 hour, then let cool in the oven.'),
  (77, 5, 'Top with whipped cream and fresh fruits.'),

  -- Meat Pie
  (78, 1, 'Preheat the oven to 375°F (190°C).'),
  (78, 2, 'Cook ground meat with onions and spices.'),
  (78, 3, 'Fill pie crust with meat mixture.'),
  (78, 4, 'Cover with a top crust and seal the edges.'),
  (78, 5, 'Bake until golden brown.'),

  -- Vegemite on Toast
  (79, 1, 'Toast slices of bread until golden brown.'),
  (79, 2, 'Spread a thin layer of butter on the toast.'),
  (79, 3, 'Spread a thin layer of Vegemite over the butter.'),
  (79, 4, 'Serve immediately.'),

  -- Anzac Biscuits
  (80, 1, 'Preheat the oven to 350°F (175°C).'),
  (80, 2, 'Mix rolled oats, flour, sugar, and coconut in a bowl.'),
  (80, 3, 'Melt butter and golden syrup in a saucepan.'),
  (80, 4, 'Stir in baking soda and water.'),
  (80, 5, 'Combine wet and dry ingredients.'),
  (80, 6, 'Drop spoonfuls of dough onto a baking sheet.'),
  (80, 7, 'Bake for 15 minutes until golden brown.');