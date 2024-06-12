execute store result score #WorldDifficulty dc_value run difficulty

# 80 health, 75% knockback resistance, longer follow range, faster movement
# Holds an undroppable wooden axe to disable shields on strike
data merge entity @s {Health:80.0f,HandDropChances:[0.000F,0.085F],attributes:[{id:"minecraft:generic.max_health",base:80.0f},{id:"minecraft:generic.follow_range",base:20},{id:"minecraft:generic.knockback_resistance",base:0.7},{id:"minecraft:generic.movement_speed",base:0.3}]}
item replace entity @s weapon.mainhand with minecraft:stone_axe[unbreakable={},attribute_modifiers=[{type:"generic.attack_damage",name:"generic.attack_damage",amount:0,operation:"add_value",id:"dc_polar_bear:shield_break"}]] 1

# 0/7/12/18 damage depending on difficulty
execute if score #WorldDifficulty dc_value matches 0 run data merge entity @s {attributes:[{id:"minecraft:generic.attack_damage",base:0}]}
execute if score #WorldDifficulty dc_value matches 1 run data merge entity @s {attributes:[{id:"minecraft:generic.attack_damage",base:7}]}
execute if score #WorldDifficulty dc_value matches 2 run data merge entity @s {attributes:[{id:"minecraft:generic.attack_damage",base:12}]}
execute if score #WorldDifficulty dc_value matches 3 run data merge entity @s {attributes:[{id:"minecraft:generic.attack_damage",base:18}]}

# Make un-leashable by leashing to itself
# However, this makes them drop leads when killed, so it's a no-go
#data modify entity @s Leash.UUID set from entity @s UUID

tag @s add dc_polarBear