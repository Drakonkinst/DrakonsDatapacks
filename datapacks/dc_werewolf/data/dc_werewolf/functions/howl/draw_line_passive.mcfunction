execute if score #RaycastQuota dc_value matches ..0 run return 0
scoreboard players set #RaycastLength dc_value 20
tag @s add dc_werewolfHowlTarget
execute facing entity @s feet run function dc_werewolf:howl/raycast_passive
tag @s remove dc_werewolfHowlTarget
scoreboard players reset #RaycastLength dc_value
scoreboard players remove #RaycastQuota dc_value 1
execute if score #IsEnraged dc_value matches 1 run effect give @s glowing 5 0 true