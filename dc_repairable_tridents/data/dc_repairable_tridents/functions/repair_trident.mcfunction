execute as @e[type=item,tag=dc_prismarineShard,limit=1]
scoreboard players remove @e[type=item,tag=dc_prismarineShard,limit=1] dc_value 1
execute as @e[type=item,tag=dc_prismarineShard,limit=1] if score @s dc_value matches 1.. store result entity @s Item.Count int 1 run scoreboard players get @s dc_value
execute as @e[type=item,tag=dc_prismarineShard,limit=1] if score @s dc_value matches ..0 run kill @s

scoreboard players remove @s dc_value 63
execute if score @s dc_value matches 1.. store result entity @s Item.tag.Damage int 1 run scoreboard players get @s dc_value
execute if score @s dc_value matches ..0 run data modify entity @s Item.tag.Damage set value 0
data modify entity @s Motion set value [0.0d,0.2d,0.0d]

experience add @p[level=1..,distance=..5] -1 levels

playsound minecraft:block.anvil.use block @a ~ ~ ~ 1 1
particle minecraft:crit ~ ~0.2 ~
particle minecraft:crit ~ ~0.6 ~
particle minecraft:crit ~0.5 ~0.2 ~

execute if predicate dc_repairable_tridents:chance_damage_anvil positioned ~ ~-0.2 ~ run function dc_repairable_tridents:damage_anvil
tag @s remove dc_foundTrident