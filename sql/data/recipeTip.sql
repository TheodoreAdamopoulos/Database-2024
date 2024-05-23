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
