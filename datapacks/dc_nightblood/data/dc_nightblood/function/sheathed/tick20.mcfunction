effect give @s minecraft:strength 2 1 true
title @s actionbar ["",{"text":"Nightblood","color":"dark_red"},{"text":": ","color":"dark_gray"},{"text":"SHEATHED","color":"gray"}]
particle minecraft:dust{scale:1,color:[0,0,0]} ^-0.75 ^ ^0.5 0.5 0.5 0.5 2 3 normal

execute if entity @s[tag=!dc_nbUnsheathing,tag=!dc_nbLockout] if predicate drakoncore:is_sneaking run function dc_nightblood:sheathed/start_unsheathe
execute if entity @s[tag=dc_nbUnsheathing] unless predicate drakoncore:is_sneaking run function dc_nightblood:sheathed/cancel_unsheathe
execute if entity @s[tag=dc_nbUnsheathing] run function dc_nightblood:sheathed/unsheathing_tick20