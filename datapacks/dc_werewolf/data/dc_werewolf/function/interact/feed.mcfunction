execute positioned ^ ^ ^1 as @n[type=wolf,tag=dc_werewolfModel,distance=..5] run data modify entity @s InLove set value 600
execute if predicate dc_werewolf:holding_bad_wolf_food positioned ^ ^ ^1 as @p[tag=dc_werewolf,tag=dc_werewolfTransformed,distance=..5] run effect give @s minecraft:hunger 15 0

# Remove 1 from mainhand
item modify entity @s[gamemode=!creative] weapon.mainhand drakoncore:remove_1