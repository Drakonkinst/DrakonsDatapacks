# Same as medium prey
scoreboard players add @s dc_werewolfRage 6
function dc_werewolf:meter/display_meter
function dc_werewolf:play_sound_for_stage
execute as @e[type=wolf,tag=!dc_werewolfModel,distance=..16] at @s run function dc_werewolf:buff_nearby_wolf_strength

advancement revoke @s only dc_werewolf:kill_intangible_prey