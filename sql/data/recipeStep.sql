-- Insert data into RecipeStep table
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
  (2, 1, 'Preheat the oven to the highest temperature with a pizza stone inside.'),
  (2, 2, 'Roll out the pizza dough on a floured surface.'),
  (2, 3, 'Spread tomato sauce over the dough.'),
  (2, 4, 'Add slices of mozzarella cheese and fresh basil leaves.'),
  (2, 5, 'Drizzle with olive oil and bake for 8-10 minutes.'),

  -- Lasagna
  (3, 1, 'Preheat oven to 375°F (190°C).'),
  (3, 2, 'Cook lasagna noodles according to package instructions.'),
  (3, 3, 'In a pan, cook ground beef until browned.'),
  (3, 4, 'Add marinara sauce to the beef and simmer.'),
  (3, 5, 'In a bowl, mix ricotta cheese with egg and parsley.'),
  (3, 6, 'Layer noodles, meat sauce, ricotta mixture, and mozzarella in a baking dish.'),
  (3, 7, 'Repeat layers and finish with a layer of mozzarella.'),
  (3, 8, 'Bake for 45 minutes until bubbly and golden brown.'),

  -- Risotto
  (4, 1, 'Heat broth in a pot and keep warm.'),
  (4, 2, 'In a pan, sauté onions in olive oil until translucent.'),
  (4, 3, 'Add rice and cook, stirring, for 2 minutes.'),
  (4, 4, 'Add white wine and cook until absorbed.'),
  (4, 5, 'Gradually add broth, one ladle at a time, stirring constantly.'),
  (4, 6, 'Continue until rice is creamy and cooked through.'),
  (4, 7, 'Stir in butter and grated cheese before serving.'),

  -- Pesto Pasta
  (5, 1, 'Cook pasta according to package instructions.'),
  (5, 2, 'In a food processor, blend basil, garlic, pine nuts, and parmesan.'),
  (5, 3, 'Gradually add olive oil until smooth.'),
  (5, 4, 'Drain pasta and toss with pesto sauce.'),
  (5, 5, 'Serve with extra parmesan cheese on top.'),

  -- Tiramisu
  (6, 1, 'Brew strong coffee and let it cool.'),
  (6, 2, 'Beat egg yolks with sugar until thick and pale.'),
  (6, 3, 'Fold in mascarpone cheese.'),
  (6, 4, 'In a separate bowl, whip cream until stiff peaks form.'),
  (6, 5, 'Fold whipped cream into mascarpone mixture.'),
  (6, 6, 'Dip ladyfingers in coffee and layer in a dish.'),
  (6, 7, 'Spread mascarpone mixture over ladyfingers.'),
  (6, 8, 'Repeat layers and finish with a layer of mascarpone.'),
  (6, 9, 'Chill for at least 4 hours.'),
  (6, 10, 'Dust with cocoa powder before serving.'),

  -- Tacos al Pastor
  (7, 1, 'Marinate pork in a mixture of pineapple juice, vinegar, and spices overnight.'),
  (7, 2, 'Preheat grill to medium-high heat.'),
  (7, 3, 'Grill pork until cooked through and slightly charred.'),
  (7, 4, 'Warm tortillas on the grill.'),
  (7, 5, 'Slice pork thinly and assemble tacos with pineapple, cilantro, and onions.'),

  -- Guacamole
  (8, 1, 'Halve and pit the avocados, then scoop the flesh into a bowl.'),
  (8, 2, 'Mash the avocados with a fork to desired consistency.'),
  (8, 3, 'Stir in lime juice, diced onions, tomatoes, and cilantro.'),
  (8, 4, 'Season with salt and serve immediately.'),

  -- Chicken Enchiladas
  (9, 1, 'Preheat oven to 350°F (175°C).'),
  (9, 2, 'Shred cooked chicken and mix with half of the enchilada sauce.'),
  (9, 3, 'Fill tortillas with chicken mixture and roll up.'),
  (9, 4, 'Place rolled tortillas in a baking dish.'),
  (9, 5, 'Pour remaining enchilada sauce over the top and sprinkle with cheese.'),
  (9, 6, 'Bake for 20-25 minutes until cheese is melted and bubbly.'),

  -- Chiles Rellenos
  (10, 1, 'Roast the peppers until charred and then peel off the skins.'),
  (10, 2, 'Make a small slit and remove seeds.'),
  (10, 3, 'Stuff peppers with cheese and secure with toothpicks.'),
  (10, 4, 'Dip in beaten egg and flour, then fry until golden.'),

  -- Tamales
  (11, 1, 'Soak corn husks in warm water for 30 minutes.'),
  (11, 2, 'Prepare masa dough by mixing masa harina with water and lard.'),
  (11, 3, 'Spread masa dough on corn husks.'),
  (11, 4, 'Add filling in the center and fold the husks.'),
  (11, 5, 'Steam tamales for 1-2 hours until masa is cooked through.'),

  -- Pozole
  (12, 1, 'Simmer pork in water with garlic and onions until tender.'),
  (12, 2, 'Add hominy and red chile sauce to the pot.'),
  (12, 3, 'Simmer for another hour to develop flavors.'),
  (12, 4, 'Serve with shredded cabbage, radishes, and lime wedges.'),

  -- Sushi
  (13, 1, 'Rinse sushi rice until water runs clear.'),
  (13, 2, 'Cook rice according to package instructions.'),
  (13, 3, 'Mix rice vinegar, sugar, and salt into the cooked rice.'),
  (13, 4, 'Lay nori on a bamboo mat and spread rice evenly over it.'),
  (13, 5, 'Place fillings along the bottom edge and roll tightly.'),
  (13, 6, 'Slice with a sharp knife and serve.'),

  -- Ramen
  (14, 1, 'Simmer broth with ginger, garlic, and soy sauce for several hours.'),
  (14, 2, 'Cook ramen noodles according to package instructions.'),
  (14, 3, 'Slice cooked pork and soft-boiled eggs.'),
  (14, 4, 'Assemble bowls with noodles, broth, pork, eggs, and vegetables.'),

  -- Tempura
  (15, 1, 'Prepare a batter with cold water and tempura flour.'),
  (15, 2, 'Heat oil in a deep fryer to 350°F (175°C).'),
  (15, 3, 'Dip seafood and vegetables in batter and fry until golden.'),
  (15, 4, 'Drain on paper towels and serve with dipping sauce.'),

  -- Teriyaki Chicken
  (16, 1, 'Marinate chicken in soy sauce, mirin, and sugar for 30 minutes.'),
  (16, 2, 'Cook chicken in a pan over medium heat until done.'),
  (16, 3, 'Add marinade to the pan and simmer until thickened.'),
  (16, 4, 'Serve with steamed rice.'),

  -- Miso Soup
  (17, 1, 'Bring dashi to a simmer in a pot.'),
  (17, 2, 'Dissolve miso paste in a small amount of dashi.'),
  (17, 3, 'Add miso mixture to the pot along with tofu and seaweed.'),
  (17, 4, 'Simmer briefly and serve hot.'),

  -- Okonomiyaki
  (18, 1, 'Mix flour, water, and eggs to make a batter.'),
  (18, 2, 'Add shredded cabbage and other ingredients to the batter.'),
  (18, 3, 'Heat oil in a pan and pour in the batter.'),
  (18, 4, 'Cook until golden brown on both sides.'),
  (18, 5, 'Drizzle with okonomiyaki sauce and mayonnaise.'),
  (18, 6, 'Sprinkle with bonito flakes and serve.'),

  -- Kung Pao Chicken
  (19, 1, 'Marinate chicken in soy sauce, cornstarch, and rice wine.'),
  (19, 2, 'Stir-fry chicken until browned and remove from pan.'),
  (19, 3, 'Sauté garlic, ginger, and dried chilies.'),
  (19, 4, 'Add sauce ingredients and return chicken to the pan.'),
  (19, 5, 'Stir in peanuts and green onions before serving.'),

  -- Sweet and Sour Pork
  (20, 1, 'Cut pork into bite-sized pieces and coat with cornstarch.'),
  (20, 2, 'Fry pork until golden and remove from oil.'),
  (20, 3, 'Sauté bell peppers and pineapple chunks.'),
  (20, 4, 'Mix sauce ingredients and add to the pan.'),
  (20, 5, 'Return pork to the pan and toss to coat with sauce.'),

  -- Dumplings
  (21, 1, 'Prepare filling with ground meat, cabbage, and seasonings.'),
  (21, 2, 'Place a spoonful of filling in the center of each dumpling wrapper.'),
  (21, 3, 'Fold and seal the edges of the wrappers.'),
  (21, 4, 'Steam or boil the dumplings until cooked through.'),
  (21, 5, 'Serve with dipping sauce.'),

  -- Fried Rice
  (22, 1, 'Heat oil in a pan and scramble eggs.'),
  (22, 2, 'Add diced vegetables and stir-fry until tender.'),
  (22, 3, 'Stir in cooked rice and soy sauce.'),
  (22, 4, 'Cook until rice is heated through and slightly crispy.'),

  -- Hot and Sour Soup
  (23, 1, 'Bring broth to a simmer and add mushrooms and tofu.'),
  (23, 2, 'Mix vinegar, soy sauce, and pepper in a bowl.'),
  (23, 3, 'Add sauce mixture to the pot and simmer.'),
  (23, 4, 'Thicken with cornstarch slurry and serve hot.'),

  -- Peking Duck
  (24, 1, 'Clean and dry the duck thoroughly.'),
  (24, 2, 'Hang the duck to air-dry for several hours.'),
  (24, 3, 'Roast in a preheated oven until skin is crispy.'),
  (24, 4, 'Serve with thin pancakes and hoisin sauce.'),

  -- Coq au Vin
  (25, 1, 'Marinate chicken in red wine with vegetables and herbs.'),
  (25, 2, 'Brown chicken in a pot and set aside.'),
  (25, 3, 'Sauté vegetables in the same pot.'),
  (25, 4, 'Add flour and cook briefly.'),
  (25, 5, 'Return chicken to the pot with marinade and broth.'),
  (25, 6, 'Simmer until chicken is tender.'),
  (25, 7, 'Serve with mashed potatoes.'),

  -- Ratatouille
  (26, 1, 'Preheat oven to 375°F (190°C).'),
  (26, 2, 'Slice vegetables into thin rounds.'),
  (26, 3, 'Layer vegetables in a baking dish.'),
  (26, 4, 'Drizzle with olive oil and season with salt and pepper.'),
  (26, 5, 'Bake for 45 minutes until vegetables are tender.'),

  -- Beef Bourguignon
  (27, 1, 'Brown beef in a pot and set aside.'),
  (27, 2, 'Sauté onions and garlic in the same pot.'),
  (27, 3, 'Add flour and cook briefly.'),
  (27, 4, 'Return beef to the pot with wine and broth.'),
  (27, 5, 'Add carrots and herbs.'),
  (27, 6, 'Simmer until beef is tender.'),
  (27, 7, 'Serve with crusty bread.'),

  -- Croissants
  (28, 1, 'Mix flour, sugar, yeast, and salt in a bowl.'),
  (28, 2, 'Add milk and water and knead into a dough.'),
  (28, 3, 'Roll out dough and fold in butter.'),
  (28, 4, 'Repeat rolling and folding several times.'),
  (28, 5, 'Cut dough into triangles and shape into croissants.'),
  (28, 6, 'Proof until doubled in size.'),
  (28, 7, 'Bake at 375°F (190°C) until golden brown.'),

  -- Quiche Lorraine
  (29, 1, 'Preheat oven to 350°F (175°C).'),
  (29, 2, 'Blind bake the pie crust.'),
  (29, 3, 'Cook bacon and onions until crispy.'),
  (29, 4, 'Whisk together eggs, cream, and cheese.'),
  (29, 5, 'Add bacon and onions to the pie crust.'),
  (29, 6, 'Pour egg mixture over the filling.'),
  (29, 7, 'Bake for 30-35 minutes until set.'),

  -- Crème Brûlée
  (30, 1, 'Preheat oven to 325°F (160°C).'),
  (30, 2, 'Heat cream and vanilla in a saucepan.'),
  (30, 3, 'Whisk egg yolks with sugar until pale.'),
  (30, 4, 'Slowly add hot cream to egg mixture.'),
  (30, 5, 'Pour into ramekins and place in a baking dish.'),
  (30, 6, 'Add hot water to the baking dish to create a water bath.'),
  (30, 7, 'Bake for 40-45 minutes until set.'),
  (30, 8, 'Chill thoroughly before caramelizing the sugar.'),

  -- Chicken Tikka Masala
  (31, 1, 'Marinate chicken in yogurt and spices overnight.'),
  (31, 2, 'Grill chicken until charred and set aside.'),
  (31, 3, 'Sauté onions, garlic, and ginger in a pan.'),
  (31, 4, 'Add tomatoes and cook until soft.'),
  (31, 5, 'Blend into a smooth sauce and return to pan.'),
  (31, 6, 'Add cream and simmer until thickened.'),
  (31, 7, 'Add grilled chicken to the sauce and cook until heated through.'),

  -- Palak Paneer
  (32, 1, 'Blanch spinach briefly and blend into a puree.'),
  (32, 2, 'Fry paneer cubes until golden and set aside.'),
  (32, 3, 'Sauté onions, garlic, and ginger in a pan.'),
  (32, 4, 'Add spinach puree and spices.'),
  (32, 5, 'Simmer until thickened.'),
  (32, 6, 'Add fried paneer and cook for a few more minutes.'),

  -- Biryani
  (33, 1, 'Marinate meat with yogurt and spices.'),
  (33, 2, 'Cook rice with whole spices until 70% done.'),
  (33, 3, 'Layer meat and rice in a pot.'),
  (33, 4, 'Add saffron-infused milk on top.'),
  (33, 5, 'Cover tightly and cook on low heat until done.'),
  (33, 6, 'Serve with raita.'),

  -- Butter Chicken
  (34, 1, 'Marinate chicken in yogurt and spices.'),
  (34, 2, 'Grill chicken until charred and set aside.'),
  (34, 3, 'Sauté onions, garlic, and ginger in a pan.'),
  (34, 4, 'Add tomatoes and cook until soft.'),
  (34, 5, 'Blend into a smooth sauce and return to pan.'),
  (34, 6, 'Add cream and butter, then simmer until thickened.'),
  (34, 7, 'Add grilled chicken to the sauce and cook until heated through.'),

  -- Samosas
  (35, 1, 'Prepare filling with boiled potatoes, peas, and spices.'),
  (35, 2, 'Make dough with flour, water, and oil.'),
  (35, 3, 'Roll out dough and cut into circles.'),
  (35, 4, 'Place filling in the center and fold into triangles.'),
  (35, 5, 'Fry until golden brown.'),

  -- Gulab Jamun
  (36, 1, 'Prepare dough with milk powder, flour, and ghee.'),
  (36, 2, 'Form into small balls and fry until golden.'),
  (36, 3, 'Soak in sugar syrup until absorbed.'),

  -- Moussaka
  (37, 1, 'Slice eggplants and potatoes, then fry until golden.'),
  (37, 2, 'Cook ground meat with onions and tomatoes.'),
  (37, 3, 'Prepare béchamel sauce.'),
  (37, 4, 'Layer eggplants, potatoes, meat, and béchamel in a dish.'),
  (37, 5, 'Bake until golden brown.'),

  -- Souvlaki
  (38, 1, 'Marinate meat with lemon juice, olive oil, and herbs.'),
  (38, 2, 'Thread meat onto skewers.'),
  (38, 3, 'Grill until cooked through.'),
  (38, 4, 'Serve with pita and tzatziki.'),

  -- Greek Salad
  (39, 1, 'Chop tomatoes, cucumbers, onions, and bell peppers.'),
  (39, 2, 'Mix vegetables with olives and feta cheese.'),
  (39, 3, 'Dress with olive oil, oregano, and lemon juice.'),

  -- Spanakopita
  (40, 1, 'Sauté spinach with onions and garlic.'),
  (40, 2, 'Mix spinach with feta cheese.'),
  (40, 3, 'Layer phyllo dough in a baking dish, brushing each layer with butter.'),
  (40, 4, 'Add spinach mixture and top with more phyllo dough.'),
  (40, 5, 'Bake until golden brown.'),

  -- Baklava
  (41, 1, 'Layer phyllo dough in a baking dish, brushing each layer with butter.'),
  (41, 2, 'Add a mixture of chopped nuts and cinnamon.'),
  (41, 3, 'Repeat layers and bake until golden.'),
  (41, 4, 'Pour syrup over hot baklava and let it soak.'),

  -- Tzatziki
  (42, 1, 'Grate cucumber and squeeze out excess water.'),
  (42, 2, 'Mix cucumber with yogurt, garlic, and dill.'),
  (42, 3, 'Season with salt and refrigerate before serving.'),

  -- Bibimbap
  (43, 1, 'Cook rice according to package instructions.'),
  (43, 2, 'Sauté vegetables and set aside.'),
  (43, 3, 'Cook beef with soy sauce and sugar.'),
  (43, 4, 'Fry eggs sunny side up.'),
  (43, 5, 'Assemble bowls with rice, vegetables, beef, and eggs.'),
  (43, 6, 'Serve with gochujang sauce.'),

  -- Kimchi
  (44, 1, 'Chop napa cabbage and soak in salt water overnight.'),
  (44, 2, 'Rinse cabbage and mix with chili paste, garlic, and ginger.'),
  (44, 3, 'Pack into jars and ferment for at least a week.'),

  -- Bulgogi
  (45, 1, 'Marinate beef with soy sauce, sugar, garlic, and sesame oil.'),
  (45, 2, 'Grill or stir-fry beef until cooked through.'),
  (45, 3, 'Serve with rice and vegetables.'),

  -- Japchae
  (46, 1, 'Soak glass noodles in water until soft.'),
  (46, 2, 'Stir-fry vegetables and set aside.'),
  (46, 3, 'Cook noodles in boiling water until tender.'),
  (46, 4, 'Mix noodles with vegetables and soy sauce.'),
  (46, 5, 'Serve with sesame seeds on top.'),

  -- Tteokbokki
  (47, 1, 'Soak rice cakes in water for 10 minutes.'),
  (47, 2, 'Simmer broth with gochujang and sugar.'),
  (47, 3, 'Add rice cakes and cook until soft.'),
  (47, 4, 'Serve with boiled eggs and green onions.'),

  -- Samgyeopsal
  (48, 1, 'Cut pork belly into thick slices.'),
  (48, 2, 'Grill pork belly until crispy.'),
  (48, 3, 'Serve with lettuce wraps and dipping sauces.'),

  -- Pho
  (49, 1, 'Simmer beef bones with ginger and spices for several hours.'),
  (49, 2, 'Cook rice noodles according to package instructions.'),
  (49, 3, 'Slice beef thinly.'),
  (49, 4, 'Assemble bowls with noodles, broth, and beef.'),
  (49, 5, 'Serve with fresh herbs and lime.'),

  -- Banh Mi
  (50, 1, 'Marinate meat with soy sauce and spices.'),
  (50, 2, 'Grill or roast meat until cooked through.'),
  (50, 3, 'Toast baguettes lightly.'),
  (50, 4, 'Assemble sandwiches with meat, pickled vegetables, and cilantro.'),

  -- Spring Rolls
  (51, 1, 'Soak rice paper in warm water until pliable.'),
  (51, 2, 'Place fillings in the center of the rice paper.'),
  (51, 3, 'Roll tightly and serve with dipping sauce.'),

  -- Bun Cha
  (52, 1, 'Marinate pork with fish sauce and sugar.'),
  (52, 2, 'Grill pork until cooked through.'),
  (52, 3, 'Serve with rice noodles and dipping sauce.'),

  -- Goi Cuon
  (53, 1, 'Soak rice paper in warm water until pliable.'),
  (53, 2, 'Place fillings in the center of the rice paper.'),
  (53, 3, 'Roll tightly and serve with dipping sauce.'),

  -- Ca Kho To
  (54, 1, 'Caramelize sugar in a clay pot.'),
  (54, 2, 'Add fish and cook until browned.'),
  (54, 3, 'Add fish sauce and simmer until fish is cooked through.'),

  -- Beef Stroganoff
  (55, 1, 'Brown beef in a pan and set aside.'),
  (55, 2, 'Sauté onions and mushrooms in the same pan.'),
  (55, 3, 'Add flour and cook briefly.'),
  (55, 4, 'Return beef to the pan with broth and simmer.'),
  (55, 5, 'Stir in sour cream and serve over noodles.'),

  -- Borscht
  (56, 1, 'Cook beets in water until tender.'),
  (56, 2, 'Sauté onions, carrots, and potatoes.'),
  (56, 3, 'Add vegetables to beet broth.'),
  (56, 4, 'Simmer until all vegetables are cooked.'),
  (56, 5, 'Serve with a dollop of sour cream.'),

  -- Pelmeni
  (57, 1, 'Prepare filling with ground meat and onions.'),
  (57, 2, 'Make dough with flour, water, and egg.'),
  (57, 3, 'Roll out dough and cut into circles.'),
  (57, 4, 'Place filling in the center and fold into dumplings.'),
  (57, 5, 'Boil until dumplings float to the surface.'),

  -- Shchi
  (58, 1, 'Sauté onions and carrots.'),
  (58, 2, 'Add cabbage and cook until wilted.'),
  (58, 3, 'Add broth and simmer until vegetables are tender.'),

  -- Blini
  (59, 1, 'Mix flour, milk, eggs, and sugar to make a batter.'),
  (59, 2, 'Cook small pancakes in a pan.'),
  (59, 3, 'Serve with sour cream or caviar.'),

  -- Olivier Salad
  (60, 1, 'Cook potatoes, carrots, and eggs until tender.'),
  (60, 2, 'Chop vegetables and mix with peas and pickles.'),
  (60, 3, 'Dress with mayonnaise and season with salt and pepper.');
