# Handle invulnerability frames
execute if score @s dc_damageDelay matches 0 run function dc_enderknife:remove_dmg_delay
execute if score @s dc_damageDelay matches 1.. run scoreboard players remove @s dc_damageDelay 1