import random

# Constants
NUM_RECIPES = 80 
N = 50
PROBABILITIES = [0.25,0.25,0.25,0.25]
CHOICES = [2, 3, 4, 5]

# Function to generate cuisine-cook pairs based on the given probabilities
def generate_cuisine_cook_pairs(num_recipes, n, probabilities, choices):
    pairs = []

    for cuisine_id in range(1, num_recipes + 1):
        random_num = random.choices(choices, probabilities)[0]
        total = random.sample(range(1, n + 1), random_num)
        for t in total:
            pairs.append((t, cuisine_id))
    
    return pairs

# Generate the cuisine-cook pairs
cuisine_cook_pairs = generate_cuisine_cook_pairs(NUM_RECIPES, N, PROBABILITIES, CHOICES)

# Output the pairs
print("INSERT INTO Tool_Recipe(tool_id, recipe_id) VALUES")
for pair in cuisine_cook_pairs:
    print(f"{pair},")

