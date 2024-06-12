tag @s remove dc_nbSheathing
tag @s remove dc_nbActive
tag @s add dc_nbLockout
effect clear @s minecraft:speed
effect clear @s minecraft:jump_boost
effect clear @s minecraft:night_vision
effect clear @s minecraft:haste
playsound minecraft:entity.blaze.ambient player @a ~ ~ ~ 1 0
scoreboard players reset @s dc_nbUse

# Show Sheathed UI
effect give @s minecraft:strength 2 1 true
title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"SHEATHED","color":"gray"}]