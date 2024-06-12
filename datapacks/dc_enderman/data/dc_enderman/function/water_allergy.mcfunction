scoreboard players reset #InBoat dc_value
execute on vehicle if entity @s[type=#drakoncore:boats] run scoreboard players set #InBoat dc_value 1
execute unless score #InBoat dc_value matches 1 if predicate drakoncore:in_water_or_cauldron run effect give @s minecraft:poison 2 2 true
execute positioned ~ ~1 ~ if predicate drakoncore:in_water_or_cauldron run effect give @s minecraft:poison 2 2 true

execute if entity @s[tag=!dc_holdingUmbrella] if predicate drakoncore:is_raining if predicate drakoncore:under_sky run effect give @s minecraft:poison 2 2 true