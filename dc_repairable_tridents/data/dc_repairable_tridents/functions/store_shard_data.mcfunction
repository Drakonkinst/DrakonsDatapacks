execute store result score @s dc_value run data get entity @s Item.Count
tag @s add dc_prismarineShard
execute as @e[type=item,tag=dc_foundTrident,limit=1,distance=..1] run function dc_repairable_tridents:repair_trident
tag @s remove dc_prismarineShard