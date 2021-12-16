execute if predicate drakoncore:is_sneaking run scoreboard players add @s dc_EM_sneakTime 1
# Reset sneaktime if they're holding something that is not an enderpearl or empty hand
execute if data entity @s SelectedItem unless predicate dc_enderman:enderpearl_mainhand unless predicate dc_enderman:enderpearl_offhand run scoreboard players reset @s dc_EM_sneakTime
execute unless predicate drakoncore:is_sneaking if score @s dc_EM_sneakTime matches 1.. run scoreboard players reset @s dc_EM_sneakTime

execute if score @s dc_EM_sneakTime matches 1.. unless data entity @s SelectedItem unless predicate dc_enderman:enderpearl_offhand run function dc_enderman:silk_hands/init_raycast
execute unless predicate drakoncore:in_nether if score @s dc_EM_sneakTime matches 3.. if predicate dc_enderman:enderpearl_offhand run function dc_enderman:teleport/attempt_random
execute if score @s dc_EM_sneakTime matches 3.. if predicate dc_enderman:enderpearl_mainhand run function dc_enderman:teleport/attempt_raycast

execute unless predicate dc_enderman:has_water_breathing run function dc_enderman:water_allergy