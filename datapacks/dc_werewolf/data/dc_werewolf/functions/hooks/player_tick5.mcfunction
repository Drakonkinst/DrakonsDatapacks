# Runs 4 times per second on each player

execute if entity @s[tag=dc_werewolf] run function dc_werewolf:werewolf_tick5
execute if entity @s[tag=dc_werewolfBuff,tag=!dc_werewolfTransformed] run function dc_werewolf:clear_wolf_buffs