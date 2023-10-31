# Allow up to 25 targets to be raycasted
# Prioritizing players, then hostile mobs, then everyone else
execute store result score #IsEnraged dc_value if score @s dc_werewolfRage matches 48..
tag @s add dc_werewolfHowlAnchor
scoreboard players set #RaycastQuota dc_value 30
execute positioned ~ ~1 ~ as @a[distance=8..64,sort=nearest] run function dc_werewolf:howl/draw_line_player
execute if score #RaycastQuota dc_value matches 1.. positioned ~ ~1 ~ as @e[type=#drakoncore:vanilla/hostile_mobs,tag=!dc_marker,distance=8..64,sort=nearest] run function dc_werewolf:howl/draw_line_hostile
execute if score #RaycastQuota dc_value matches 1.. positioned ~ ~1 ~ as @e[type=#dc_werewolf:passive_and_neutral,type=!wolf,tag=!dc_marker,distance=8..64,sort=nearest] run function dc_werewolf:howl/draw_line_passive
tag @s remove dc_werewolfHowlAnchor