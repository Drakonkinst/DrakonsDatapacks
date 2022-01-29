effect give @s minecraft:speed 2 5 true
effect give @s minecraft:jump_boost 2 1 true
effect give @s minecraft:night_vision 12 0 true
effect give @s minecraft:haste 2 3 true
title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"UNLEASHED","color":"red","bold":true}]

execute unless entity @s[gamemode=creative] run function dc_nightblood:unsheathed/drain

execute if entity @s[tag=!dc_nbSheathing,tag=!dc_nbLockout] if predicate drakoncore:is_sneaking run function dc_nightblood:unsheathed/start_sheathe
execute if entity @s[tag=dc_nbSheathing] unless predicate drakoncore:is_sneaking run function dc_nightblood:unsheathed/cancel_sheathe
execute if entity @s[tag=dc_nbSheathing] run function dc_nightblood:unsheathed/sheathing_tick20