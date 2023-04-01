execute unless entity @s[tag=dc_holdingUmbrella] if dimension minecraft:overworld if predicate dc_vampire:is_day if predicate drakoncore:under_sky run function dc_vampire:in_daylight

# Tag nearby living mobs with a tag so it's easier to detect when they're killed
execute positioned ~-64 ~-64 ~-64 run tag @e[type=#drakoncore:living_mobs,tag=!dc_vampire_bat,dx=128,dy=128,dz=128] add dc_living_mob

# If the player does not have a blood level score (first time becoming vampire), set it to some initial value
execute unless score @s dc_bloodLevel matches -999.. run scoreboard players set @s dc_bloodLevel 121 

function dc_vampire:blood_level_effects

# Increment or reset sneak score
execute if predicate drakoncore:is_sneaking run scoreboard players add @s dc_vampireSneak 1
execute if data entity @s SelectedItem unless predicate dc_vampire:ghast_tear_mainhand run scoreboard players reset @s dc_vampireSneak
execute unless predicate drakoncore:is_sneaking if score @s dc_vampireSneak matches 1.. run scoreboard players reset @s dc_vampireSneak

# Sneak abilities
execute if score @s dc_vampireSneak matches 3.. unless data entity @s SelectedItem run function dc_vampire:absorb_bats
execute if score @s dc_vampireSneak matches 3.. if predicate dc_vampire:ghast_tear_mainhand run function dc_vampire:attempt_bat_swarm

effect give @s[tag=dc_vampireFloat] minecraft:slow_falling 1 0 true
execute if predicate drakoncore:on_ground run tag @s remove dc_vampireFloat

# Display
execute if entity @s[gamemode=!spectator] if predicate dc_vampire:ghast_tear_mainhand run function dc_vampire:display/show_blood_level
execute if entity @s[tag=dc_inBatfly] run function dc_vampire:display/show_blood_level