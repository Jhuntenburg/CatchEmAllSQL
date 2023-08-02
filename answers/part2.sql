//What are all the types of pokemon that a pokemon can have?
mysql> SELECT primary_type from pokemons
    -> UNION
    -> SELECT secondary_type FROM pokemons;

    //What is the name of the pokemon with id 45?
    mysql> SELECT name FROM pokemons WHERE id = 45;

    //How many pokemon are there?
    mysql> SELECT COUNT(*) FROM pokemons;

    //How many types are there?
    mysql> SELECT COUNT(DISTINCT primary_type) + Count(DISTINCT secondary_type) FROM
     pokemons;


    //How many pokemon have a secondary type?
    mysql> SELECT COUNT(*) FROM pokemons WHERE secondary_type IS NOT NULL;