import random

# Constants
NUM_EPISODES = 70
NUM_COOKS = 60
PROBABILITIES = [0.65, 0.25, 0.10]
NUM_CUISINES_CHOICES = [1, 2, 3]

# Function to generate cuisine-cook pairs based on the given probabilities
def generate_cuisine_cook_pairs(num_episodes, num_cooks):
    pairs = []

    for episode_id in range(1, num_episodes + 1):
        for _ in range(3):
            random_judge_id = random.randint(1, num_cooks+1)
            pairs.append((random_judge_id, episode_id))
    
    return pairs

# Generate the cuisine-cook pairs
cuisine_cook_pairs = generate_cuisine_cook_pairs(NUM_EPISODES, NUM_COOKS)

# Output the pairs
print("INSERT INTO Judge_Episode(cook_id, episode_id) VALUES")
for i, pair in enumerate(cuisine_cook_pairs):
    print(f"{pair}, ", end='')
    if (i+1) % 3 == 0:
        print()

