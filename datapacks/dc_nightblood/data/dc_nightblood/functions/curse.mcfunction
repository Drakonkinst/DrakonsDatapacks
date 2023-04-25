gamerule showDeathMessages false
tag @s add dc_nbWitherReason
damage @s 6 dc_nightblood:nightblood
execute if score @s dc_health matches ..6 run kill @s
tag @s remove dc_nbWitherReason
gamerule showDeathMessages true