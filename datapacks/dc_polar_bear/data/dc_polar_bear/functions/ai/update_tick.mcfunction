
execute if score @s dc_polarBearLunge matches 1.. run scoreboard players remove @s dc_polarBearLunge 1
execute if score @s dc_polarBearLunge matches 150.. run tag @e[type=#dc_polar_bear:lunge_damage,type=!polar_bear,distance=..2] add dc_polarBearLunged
execute if score @s dc_polarBearLunge matches 150 run function dc_polar_bear:ai/lunge_end