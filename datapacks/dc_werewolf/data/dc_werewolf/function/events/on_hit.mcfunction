scoreboard players add @s dc_werewolfRage 2
execute if score @s dc_werewolfRage matches 6.. run function dc_werewolf:meter/display_meter
advancement revoke @s only dc_werewolf:werewolf_hit