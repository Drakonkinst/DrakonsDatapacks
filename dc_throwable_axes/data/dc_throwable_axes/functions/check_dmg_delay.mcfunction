# Handle invulnerability frames
execute if score @s dc_damageDelay matches 0 run function dc_throwable_axes:remove_dmg_delay
execute if score @s dc_damageDelay matches 1.. run function dc_throwable_axes:add_dmg_delay