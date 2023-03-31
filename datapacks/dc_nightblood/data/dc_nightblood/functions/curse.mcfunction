gamerule showDeathMessages false
tag @s add dc_nbWitherReason
effect give @s minecraft:instant_damage 1 0 true
execute if score @s dc_health matches ..6 run kill @s
tag @s remove dc_nbWitherReason
gamerule showDeathMessages true