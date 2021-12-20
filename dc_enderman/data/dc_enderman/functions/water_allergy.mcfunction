execute unless data entity @s RootVehicle.Entity{id:"minecraft:boat"} unless entity @e[type=boat,limit=1,distance=..1] if block ~ ~ ~ #dc_enderman:water_type run effect give @s minecraft:poison 2 2 true
execute unless data entity @s RootVehicle.Entity{id:"minecraft:boat"} unless entity @e[type=boat,limit=1,distance=..1] if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run effect give @s minecraft:poison 2 2 true

execute if block ~ ~1 ~ #dc_enderman:water_type run effect give @s minecraft:poison 2 2 true
execute if block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] run effect give @s minecraft:poison 2 2 true

tag @s add dc_inRainyBiome
execute if entity @s[tag=dc_inRainyBiome] if predicate drakoncore:in_overworld if predicate drakoncore:is_raining if predicate drakoncore:under_sky run effect give @s minecraft:poison 2 2 true
tag @s remove dc_inRainyBiome