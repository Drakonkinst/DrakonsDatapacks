execute if entity @e[type=wolf,tag=dc_werewolfModel,tag=!dc_werewolfLeashed,limit=1,distance=..0.75] run function dc_werewolf:leash/on_look_success
scoreboard players remove #RaycastLength dc_value 1
execute unless entity @s[tag=dc_lookingAtWolf] if score #RaycastLength dc_value matches 1.. positioned ^ ^ ^0.2 if block ~ ~ ~ #drakoncore:non_solid run function dc_werewolf:leash/raycast