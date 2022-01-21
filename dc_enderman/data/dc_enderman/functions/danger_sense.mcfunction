execute unless data entity @s RootVehicle.Entity{id:"minecraft:boat"} if block ~ ~ ~ #drakoncore:water_type run tag @s add dc_in_water
execute unless data entity @s RootVehicle.Entity{id:"minecraft:boat"} if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run tag @s add dc_in_water
execute if block ~ ~1 ~ #drakoncore:water_type run tag @s add dc_in_water
execute if block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] run tag @s add dc_in_water
execute unless entity @s[tag=dc_holdingUmbrella] if predicate drakoncore:is_raining run tag @s add dc_in_water

execute if entity @s[tag=dc_in_water] if predicate dc_enderman:chance_enderman_teleport_water at @s run function dc_enderman:teleport/random
execute if entity @s[tag=!dc_in_water] if predicate dc_enderman:chance_enderman_teleport at @s run function dc_enderman:teleport/random
tag @s remove dc_in_water