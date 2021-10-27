# Runs 20 times per second on each entity
execute if entity @s[type=armor_stand,tag=dc_thrownAxe] positioned ~ ~1.5 ~ positioned ^-0.375 ^ ^1 run function dc_throwable_axes:axe

# Handle invulnerability frames
execute if score @s[tag=damageDelay] dc_damageDelay matches 0 run tag @s remove damageDelay
execute if score @s dc_damageDelay matches 0 run scoreboard players reset @s dc_damageDelay

execute if score @s[tag=!damageDelay] dc_damageDelay matches 1.. run tag @s add damageDelay
execute if score @s[tag=damageDelay] dc_damageDelay matches 1.. run scoreboard players remove @s dc_damageDelay 1