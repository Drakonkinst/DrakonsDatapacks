# Caps at 60 * 5 = 300 seconds (5 minutes) of duration, or 10 medium mob kills
execute if score @s dc_werewolfRage matches 60.. run scoreboard players set @s dc_werewolfRage 60

# Decay over time
execute if score @s dc_werewolfRage matches 1.. run scoreboard players remove @s dc_werewolfRage 1