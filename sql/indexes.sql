CREATE INDEX idx_attempt_episode_id ON Attempt (episode_id);
CREATE INDEX idx_attempt_cook_id ON Attempt (cook_id);
CREATE INDEX idx_attempt_recipe_id ON Attempt (recipe_id);
CREATE INDEX idx_evaluation_attempt_id ON Evaluation(attempt_id);