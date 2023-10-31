execute positioned ^ ^ ^1 as @e[type=wolf,tag=dc_werewolfModel,limit=1,distance=..5,sort=nearest] run data modify entity @s InLove set value 600
execute if predicate dc_werewolf:holding_bad_wolf_food positioned ^ ^ ^1 as @a[tag=dc_werewolf,tag=dc_werewolfTransformed,limit=1,distance=..5,sort=nearest] run effect give @s minecraft:hunger 15 0

# Remove 1 from mainhand
item modify entity @s weapon.mainhand drakoncore:remove_1