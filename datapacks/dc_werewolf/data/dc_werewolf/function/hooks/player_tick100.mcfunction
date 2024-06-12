# Runs once every 5 seconds on each player
team leave @s[team=dc_werewolf,tag=!dc_werewolf]
execute if entity @s[tag=dc_werewolf] run function dc_werewolf:werewolf_tick100