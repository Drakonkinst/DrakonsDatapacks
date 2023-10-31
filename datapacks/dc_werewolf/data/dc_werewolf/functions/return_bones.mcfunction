summon item ~ ~ ~ {Item:{id:"minecraft:bone",Count:1b},Tags:["dc_new"],PickupDelay:0b}
data modify entity @e[type=item,distance=..1,tag=dc_new,limit=1] Owner set from entity @s UUID
execute store result entity @e[type=item,distance=..1,tag=dc_new,limit=1] Item.Count byte 1 run scoreboard players get @s dc_werewolfBones
tag @e[type=item,distance=..1] remove dc_new
scoreboard players reset @s dc_werewolfBones
tag @s remove dc_werewolfNeedsBones