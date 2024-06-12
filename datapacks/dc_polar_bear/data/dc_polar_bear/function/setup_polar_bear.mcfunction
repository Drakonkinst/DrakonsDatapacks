execute store result score #WorldDifficulty dc_value run difficulty

# 80 health, 75% knockback resistance, longer follow range, faster movement
# Holds an undroppable wooden axe to disable shields on strike
attribute @s minecraft:generic.max_health base set 80
attribute @s minecraft:generic.follow_range base set 20
attribute @s minecraft:generic.knockback_resistance base set 0.7
attribute @s minecraft:generic.movement_speed base set 0.3
item replace entity @s weapon.mainhand with minecraft:stone_axe[unbreakable={},attribute_modifiers=[{type:"minecraft:generic.attack_damage",name:"minecraft:generic.attack_damage",amount:0,operation:"add_value",id:"dc_polar_bear:shield_break"}]] 1
data merge entity @s {Health:80.0f,HandDropChances:[-327.670F,0.085F]}

# 0/7/12/18 damage depending on difficulty
execute if score #WorldDifficulty dc_value matches 0 run attribute @s minecraft:generic.attack_damage base set 0
execute if score #WorldDifficulty dc_value matches 1 run attribute @s minecraft:generic.attack_damage base set 7
execute if score #WorldDifficulty dc_value matches 2 run attribute @s minecraft:generic.attack_damage base set 12
execute if score #WorldDifficulty dc_value matches 3 run attribute @s minecraft:generic.attack_damage base set 18

# Make un-leashable by leashing to itself
# However, this makes them drop leads when killed, so it's a no-go
#data modify entity @s Leash.UUID set from entity @s UUID

tag @s add dc_polarBear