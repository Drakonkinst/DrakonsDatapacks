# Caps at 96 * 5 = 480 seconds (8 minutes) of duration, or 80 medium mob kills
execute if score @s dc_werewolfRage matches 96.. run scoreboard players set @s dc_werewolfRage 96

# Decay over time
execute if score @s dc_werewolfRage matches 1.. run scoreboard players remove @s dc_werewolfRage 1

execute if score @s dc_werewolfRage matches 1.. if predicate dc_werewolf:is_day if predicate drakoncore:under_sky run scoreboard players remove @s dc_werewolfRage 1

# Nearby wolves have permanent resistance and match your speed effect
effect give @e[type=wolf,tag=!dc_werewolfModel,distance=..16] resistance 10 0 true
execute if predicate dc_werewolf:has_speed_2 run effect give @e[type=wolf,tag=!dc_werewolfModel,distance=..16] speed 10 1 true
execute if predicate dc_werewolf:has_speed_1 run effect give @e[type=wolf,tag=!dc_werewolfModel,distance=..16] speed 10 0 true