execute if predicate drakoncore:is_sneaking run scoreboard players add @s dc_EM_sneakTime 1
execute unless predicate drakoncore:in_nether if data entity @s SelectedItem unless predicate dc_enderman:holding_enderpearl run scoreboard players reset @s dc_EM_sneakTime
execute unless predicate drakoncore:is_sneaking if score @s dc_EM_sneakTime matches 1.. run scoreboard players reset @s dc_EM_sneakTime

execute if score @s dc_EM_sneakTime matches 1.. unless data entity @s SelectedItem run function dc_enderman:init_raycast
execute unless predicate drakoncore:in_nether if score @s dc_EM_sneakTime matches 3.. if predicate dc_enderman:holding_enderpearl run function dc_enderman:teleport_random

execute if block ~ ~ ~ water unless predicate dc_enderman:has_water_breathing run effect give @s minecraft:poison 2 2 true
execute unless block ~ ~ ~ water if block ~ ~1 ~ water unless predicate dc_enderman:has_water_breathing run effect give @s minecraft:poison 2 2 true
execute if predicate drakoncore:is_raining if predicate drakoncore:under_sky run effect give @s minecraft:poison 2 2 true

execute store result score #EndermanID dc_value run data get entity @s UUID[0]
execute as @e[type=enderman,distance=..32] if data entity @s AngryAt at @s run function dc_enderman:check_enderman