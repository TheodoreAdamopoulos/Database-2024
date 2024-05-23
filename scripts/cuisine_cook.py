import random

# Constants
NUM_CUISINES = 10
NUM_COOKS = 60
PROBABILITIES = [0.65, 0.25, 0.10]
NUM_CUISINES_CHOICES = [1, 2, 3]

# Function to generate cuisine-cook pairs based on the given probabilities
def generate_cuisine_cook_pairs(num_cuisines, num_cooks, probabilities, num_cuisines_choices):
    pairs = []

    for cook_id in range(1, num_cooks + 1):
        # Select the number of cuisines for this cook based on the given probabilities
        num_cuisines_for_cook = random.choices(num_cuisines_choices, probabilities)[0]
        
        # Randomly select cuisines for this cook
        cuisines_for_cook = random.sample(range(1, num_cuisines + 1), num_cuisines_for_cook)
        
        # Create pairs for the selected cuisines
        for cuisine_id in cuisines_for_cook:
            pairs.append((cook_id, cuisine_id))
    
    return pairs

# Generate the cuisine-cook pairs
cuisine_cook_pairs = generate_cuisine_cook_pairs(NUM_CUISINES, NUM_COOKS, PROBABILITIES, NUM_CUISINES_CHOICES)

# Output the pairs
print("INSERT INTO Cook_Cuisine(cook_id, cuisine_id) VALUES)")
for pair in cuisine_cook_pairs:
    print(f"{pair},")

