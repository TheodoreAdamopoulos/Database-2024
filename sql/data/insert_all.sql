\set base_path '~/ntua/db/Database-2024/sql/'
\set data_path '~/ntua/db/Database-2024/sql/data'

-- For teo
--\set base_path '/home/cerberus/Documents/db24/sql/'
-- \set data_path '/home/cerberus/Documents/db24/sql/data'

--\i :base_path/schema.sql
\i :data_path/cook.sql
\i :data_path/cuisine.sql
\i :data_path/cookCuisine.sql

\i :data_path/foodCategory.sql

\i :data_path/ingredient.sql

\i :data_path/recipe.sql
\i :data_path/ingredientRecipe.sql
\i :data_path/recipeStep.sql
\i :data_path/recipeTip.sql

\i :data_path/episode.sql
\i :data_path/attempt.sql
\i :data_path/evaluation.sql

\i :data_path/label.sql
\i :data_path/labelRecipe.sql

\i :data_path/meal.sql
\i :data_path/mealRecipe.sql

\i :data_path/topic.sql
\i :data_path/topicRecipe.sql

\i :data_path/tool.sql
\i :data_path/toolRecipe.sql

\i :data_path/nutritionFacts.sql

