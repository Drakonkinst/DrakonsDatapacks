execute if predicate drakoncore:is_sneaking run scoreboard players add @s dc_EM_sneakTime 1
execute unless predicate drakoncore:in_nether if data entity @s SelectedItem unless predicate dc_enderman:holding_enderpearl run scoreboard players reset @s dc_EM_sneakTime
execute unless predicate drakoncore:is_sneaking if score @s dc_EM_sneakTime matches 1.. run scoreboard players reset @s dc_EM_sneakTime

execute if score @s dc_EM_sneakTime matches 1.. unless data entity @s SelectedItem run function dc_enderman:init_raycast
execute unless predicate drakoncore:in_nether if score @s dc_EM_sneakTime matches 3.. if predicate dc_enderman:holding_enderpearl run function dc_enderman:teleport_random

execute unless predicate dc_enderman:has_water_breathing run function dc_enderman:water_allergy