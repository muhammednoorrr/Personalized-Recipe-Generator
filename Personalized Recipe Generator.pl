% Dish Facts with Cooking Instructions
% dish(Name, ContainsPepper, RequiresWater, CookingTime, CulturalSignificance, DietaryRestriction, Instructions)
dish(shiro, no, low, short, yes, vegan, 
    ['1. Heat oil in a pan.',
     '2. Add minced onion and cook until soft.',
     '3. Stir in chickpea flour and mix well.',
     '4. Gradually add water while stirring to avoid lumps.',
     '5. Add salt and spices to taste (no pepper).',
     '6. Simmer for 5-10 minutes until thickened.',
     '7. Serve with injera or bread.']).

dish(doro_wot, yes, medium, long, yes, none, 
    ['1. Heat oil and cook onions until golden brown.',
     '2. Add berbere spice mix and stir well.',
     '3. Add chicken pieces and simmer with water.',
     '4. Cook for 1-2 hours, stirring occasionally.',
     '5. Add boiled eggs for authenticity.']).

dish(pasta, no, medium, medium, no, none, 
    ['1. Boil water in a pot and add pasta.',
     '2. Cook pasta until al dente, then drain.',
     '3. Heat a pan, add oil, and cook garlic.',
     '4. Toss pasta with your favorite sauce and spices.',
     '5. Serve hot.']).

dish(scrambled_eggs, no, low, short, no, none, 
    ['1. Crack eggs into a bowl and whisk with salt.',
     '2. Heat butter in a pan over medium heat.',
     '3. Pour in eggs and stir continuously.',
     '4. Cook until fluffy and serve hot.']).

dish(salad, no, none, short, no, vegetarian, 
    ['1. Chop fresh vegetables (e.g., lettuce, tomato, cucumber).',
     '2. Mix in a bowl with your choice of dressing.',
     '3. Add toppings like nuts, seeds, or cheese.',
     '4. Serve fresh and cold.']).

dish(teff_pancake, no, medium, short, yes, gluten_free, 
    ['1. Mix teff flour with water and let it ferment overnight.',
     '2. Heat a non-stick pan over medium heat.',
     '3. Pour batter into the pan to form a pancake.',
     '4. Cook until bubbles form on the surface, then flip.',
     '5. Serve with honey or stew.']).

dish(fish_stew, yes, high, medium, yes, pescatarian, 
    ['1. Heat oil in a pot and cook onions until soft.',
     '2. Add garlic, spices, and tomato paste.',
     '3. Add fish pieces and cover with water.',
     '4. Simmer for 20-30 minutes until fish is cooked.',
     '5. Serve hot with bread or rice.']).

dish(lentil_stew, yes, medium, medium, yes, vegan, 
    ['1. Rinse lentils and set aside.',
     '2. Heat oil in a pot and cook onions and garlic.',
     '3. Add lentils, water, and spices.',
     '4. Simmer for 30-40 minutes until lentils are tender.',
     '5. Serve hot with injera or rice.']).

% Drink Pairings
% drink_pair(Dish, Drink)
drink_pair(shiro, tea).
drink_pair(doro_wot, tej).
drink_pair(pasta, wine).
drink_pair(scrambled_eggs, coffee).
drink_pair(salad, juice).
drink_pair(teff_pancake, milk).
drink_pair(fish_stew, beer).
drink_pair(lentil_stew, water).

% User Preference Rules
% Matches a dish based on absence of pepper
pepper_free(Dish) :- dish(Dish, no, _, _, _, _, _).

% Matches a dish based on low water usage
low_water(Dish) :- dish(Dish, _, low, _, _, _, _).

% Matches a dish that can be prepared quickly
quick_dish(Dish) :- dish(Dish, _, _, short, _, _, _).

% Recommendations Based on User Preferences
% Recommend dishes based on pepper-free, low water, and quick criteria
recommend(Dish, Instructions) :- 
    pepper_free(Dish), 
    low_water(Dish), 
    quick_dish(Dish), 
    dish(Dish, _, _, _, _, _, Instructions).
