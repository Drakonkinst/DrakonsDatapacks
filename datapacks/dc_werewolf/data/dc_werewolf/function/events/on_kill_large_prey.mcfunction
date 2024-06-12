execute if entity @s[tag=dc_werewolfTransformed] run function dc_werewolf:eat_large_prey
# 9 * 5 = 45 seconds
scoreboard players add @s dc_werewolfRage 9
function dc_werewolf:meter/display_meter
function dc_werewolf:play_sound_for_stage
execute as @e[type=wolf,tag=!dc_werewolfModel,distance=..16] at @s run function dc_werewolf:buff_nearby_wolf_health

advancement revoke @s only dc_werewolf:kill_large_prey