--What is each pokemon's primary type?
mysql> SELECT p.name, t.name
    -> FROM pokemons p
    -> JOIN types t ON p.primary_type = t.id;


--What is Rufflet's secondary type?
mysql> SELECT p.name, t.name
    -> FROM pokemons p
    -> LEFT JOIN types t ON p.secondary_type = t.id
    -> WHERE p.name = 'Rufflet';


--What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pt.trainerID, p.name FROM pokemon_trainer pt  LEFT JOIN pokemons p ON pt.pokemon_id = p.id
WHERE pt.trainerID = 303;


--How many pokemon have a secondary type Poison
SELECT COUNT(*) FROM pokemons p
WHERE p.secondary_type = 7;
--------------------------------------------------------

SELECT COUNT(*) AS NumberOfPokemonsWithPoisonSecondaryType
FROM pokemons p
WHERE p.secondary_type = (SELECT id FROM types WHERE name = 'poison');


--What are all the primary types and how many pokemon have that type?


--How many pokemon at level 100 does each trainer with at least one level
--100 pokemone have? (Hint: your query should not display a trainer


--How many pokemon only belong to one trainer and no other?