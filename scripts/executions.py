import random
EPISODES = 70
COOKS = 60
RECIPES_PER_CUISINE = 4
cook_cuisine = [(1, 7), (2, 4), (3, 11), (3, 1), (4, 18), (5, 18), (5, 5), (6, 12), (7, 1), (8, 12), (9, 17), (10, 20), (11, 9), (12, 6), (13, 16), (14, 17), (15, 17), (15, 7), (16, 11), (17, 8), (18, 9), (19, 10), (20, 14), (21, 11), (22, 16), (23, 7), (23, 2), (23, 20), (24, 10), (24, 3), (25, 18), (25, 2), (25, 4), (26, 14), (27, 7), (28, 6), (29, 3), (29, 19), (30, 10), (31, 3), (32, 8), (33, 10), (34, 18), (35, 20), (36, 8), (36, 13), (37, 16), (38, 10), (39, 15), (40, 17), (40, 19), (41, 19), (42, 11), (42, 17), (43, 18), (44, 14), (45, 18), (46, 13), (47, 10), (48, 15), (49, 12), (49, 2), (49, 1), (50, 12), (50, 2), (51, 19), (52, 9), (52, 11), (53, 4), (53, 17), (54, 2), (55, 17), (56, 9), (56, 15), (56, 11), (57, 16), (58, 2), (59, 6), (59, 13), (60, 1), (60, 16) ]
result = []

for episode_id in range(1, 1 + EPISODES):
    cook_set = set()
    recipe_set = set()
    for i in range(1, 11):
      exec_id = (episode_id - 1) * 10 + i
      random_cook_id = random.randint(1, COOKS)
      while random_cook_id in cook_set:
        random_cook_id = random.randint(1, COOKS)
      cook_set.add(random_cook_id)
      cuisines = [t[1] for t in cook_cuisine if t[0] == random_cook_id]
      recipes = [RECIPES_PER_CUISINE * (j-1) + k for j in cuisines for k in range(1, RECIPES_PER_CUISINE+1)]
      random_recipe_id = random.choice(recipes)
      while random_recipe_id in recipe_set:
        random_recipe_id = random.choice(recipes)
      recipe_set.add(random_recipe_id)
      result.append((exec_id, episode_id, random_cook_id, random_recipe_id))
      

print("INSERT INTO Attempt(id, episode_id, cook_id, recipe_id) VALUES")
for i, res in enumerate(result):
  print(f"  {res}, ")
  if (i+1) % 10 == 0:
    print()