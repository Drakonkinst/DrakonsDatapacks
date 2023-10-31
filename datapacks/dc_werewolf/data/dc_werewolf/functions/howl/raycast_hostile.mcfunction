execute if entity @e[type=#drakoncore:vanilla/hostile_mobs,distance=..2,tag=dc_werewolfHowlTarget,limit=1] run scoreboard players reset #RaycastLength dc_value
scoreboard players remove #RaycastLength dc_value 1
particle minecraft:dripping_lava ~ ~ ~ 0 0 0 0 1 force @a[tag=dc_werewolfHowlAnchor,limit=1]
execute if score #RaycastLength dc_value matches 1.. positioned ^ ^ ^1 run function dc_werewolf:howl/raycast_hostile