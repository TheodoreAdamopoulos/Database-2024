import random

# Constants
NUM_RECIPES = 80 
N = 8
PROBABILITIES = [0.55, 0.30, 0.15]
CHOICES = [1, 2, 3]

# Function to generate cuisine-cook pairs based on the given probabilities
def generate_cuisine_cook_pairs(num_recipes, n, probabilities, choices):
    pairs = []

    for cuisine_id in range(1, num_recipes + 1):
        random_num = random.choices(choices, probabilities)[0]
        total = random.sample(range(1, N + 1), random_num)
        for t in total:
            pairs.append((t, cuisine_id))
    
    return pairs

# Generate the cuisine-cook pairs
cuisine_cook_pairs = generate_cuisine_cook_pairs(NUM_RECIPES, N, PROBABILITIES, CHOICES)

# Output the pairs
print("INSERT INTO Meal_Recipe(meal_id, recipe_id) VALUES")
for pair in cuisine_cook_pairs:
    print(f"{pair},")

