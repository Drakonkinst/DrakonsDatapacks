# Handle invulnerability frames
execute if score @s dc_damageDelay matches 0 run scoreboard players reset @s dc_damageDelay
execute if score @s dc_damageDelay matches 1.. run scoreboard players remove @s dc_damageDelay 1