execute store result score #WorldDifficulty dc_value run difficulty

# 80 health, 75% knockback resistance, longer follow range, faster movement
# Holds an undroppable wooden axe to disable shields on strike
data merge entity @s {Health:80.0f,HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-1651709720,340673728,-2030299386,2037859230]}]}},{}],HandDropChances:[0.000F,0.085F],Attributes:[{Name:generic.max_health,Base:80.0f},{Name:generic.follow_range,Base:20},{Name:generic.knockback_resistance,Base:0.7},{Name:generic.movement_speed,Base:0.3}]}

# 0/7/12/18 damage depending on difficulty
execute if score #WorldDifficulty dc_value matches 0 run data merge entity @s {Attributes:[{Name:generic.attack_damage,Base:0}]}
execute if score #WorldDifficulty dc_value matches 1 run data merge entity @s {Attributes:[{Name:generic.attack_damage,Base:7}]}
execute if score #WorldDifficulty dc_value matches 2 run data merge entity @s {Attributes:[{Name:generic.attack_damage,Base:12}]}
execute if score #WorldDifficulty dc_value matches 3 run data merge entity @s {Attributes:[{Name:generic.attack_damage,Base:18}]}

# Make un-leashable by leashing to itself
# However, this makes them drop leads when killed, so it's a no-go
#data modify entity @s Leash.UUID set from entity @s UUID

tag @s add dc_polarBear