# Runs 4 times per second on each player

execute if entity @s[tag=dc_werewolf] run function dc_werewolf:werewolf_tick5

# If entity has dc_werewolfBuff2, implies they have dc_werewolfBuff1, and so on
# So this check is sufficient
execute if entity @s[tag=dc_werewolfBuff1,tag=!dc_werewolfTransformed] run function dc_werewolf:buffs/clear_all_buffs