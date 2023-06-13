function dc_enderman:check_for_water

execute if entity @s[tag=dc_inWater] if predicate dc_enderman:chance_enderman_teleport_water at @s run function dc_enderman:teleport/random
execute unless entity @s[tag=dc_inWater] if predicate dc_enderman:chance_enderman_teleport at @s run function dc_enderman:teleport/random
tag @s remove dc_inWater