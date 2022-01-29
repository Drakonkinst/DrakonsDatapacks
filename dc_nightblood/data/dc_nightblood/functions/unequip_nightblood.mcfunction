execute if entity @s[tag=dc_nbUnsheathing] run function dc_nightblood:sheathed/cancel_unsheathe
execute if entity @s[tag=dc_nbSheathing] run function dc_nightblood:unsheathed/cancel_sheathe
tag @s[tag=dc_nbActive] add dc_nbCurse
tag @s remove dc_holdingNb