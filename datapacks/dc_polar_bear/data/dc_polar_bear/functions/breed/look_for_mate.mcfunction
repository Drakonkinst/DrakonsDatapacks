# Mate must not be the same polar bear, must be fully grown,
# not currently tracking anything, within 5 blocks, max food, be off
# breeding cooldown
tag @s add dc_thisPolarBear
scoreboard players reset #FoundMate dc_value
execute at @s as @e[type=polar_bear,tag=dc_polarBear,tag=!dc_aggroThreat,tag=!dc_aggroPrey,tag=!dc_thisPolarBear,distance=..5] if score @s dc_polarBearFood matches 48.. unless score @s dc_polarBearBreed matches 1.. run function dc_polar_bear:breed/select_mate
execute if score #FoundMate dc_value matches 1 at @s run function dc_polar_bear:breed/mate
tag @s remove dc_thisPolarBear