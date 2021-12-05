execute if block ~ ~ ~ #dc_enderman:water_type run effect give @s minecraft:poison 2 2 true
execute if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run effect give @s minecraft:poison 2 2 true

execute if block ~ ~1 ~ #dc_enderman:water_type run effect give @s minecraft:poison 2 2 true
execute if block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] run effect give @s minecraft:poison 2 2 true

execute if predicate drakoncore:is_raining if predicate drakoncore:under_sky run effect give @s minecraft:poison 2 2 true