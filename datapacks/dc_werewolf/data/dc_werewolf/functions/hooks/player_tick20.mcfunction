# Runs once per second on each player

execute if entity @s[tag=dc_werewolf,tag=dc_werewolfTransformed] if score @s dc_werewolfRage matches 48.. run function dc_werewolf:enraged_tick20