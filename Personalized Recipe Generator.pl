% Dish Facts
% dish(Name, ContainsPepper, RequiresWater, CookingTime, CulturalSignificance, DietaryRestriction)
dish(shiro, no, low, short, yes, vegan).
dish(doro_wot, yes, medium, long, yes, none).
dish(pasta, no, medium, medium, no, none).
dish(scrambled_eggs, no, low, short, no, none).
dish(salad, no, none, short, no, vegetarian).
dish(teff_pancake, no, medium, short, yes, gluten_free).
dish(fish_stew, yes, high, medium, yes, pescatarian).
dish(lentil_stew, no, medium, medium, yes, vegan).

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
pepper_free(Dish) :- dish(Dish, no, _, _, _, _).

% Matches a dish based on low water usage
low_water(Dish) :- dish(Dish, _, low, _, _, _).

% Matches a dish that can be prepared quickly
quick_dish(Dish) :- dish(Dish, _, _, short, _, _).

% Recommendations Based on User Preferences
% Recommend dishes based on pepper-free, low water, and quick criteria
recommend(Dish) :- pepper_free(Dish), low_water(Dish), quick_dish(Dish).

