# When a zombie is spawned

execute if entity @s[type=zombie,tag=!dc_transformed] unless entity @s[tag=dc_mob_transformed] if predicate dc_shiny_toe:chance_shiny_toe_spawn run function dc_shiny_toe:summon_shiny_toe