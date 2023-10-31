# If sitting still while crouching, sit
execute if score #IsSneaking dc_value matches 1 unless score @s dc_werewolfSitSprint matches ..-1 run function dc_werewolf:model/sit

# If sitting still for 10 seconds, sit
execute unless entity @s[tag=dc_werewolfSit] if score @s dc_werewolfSitSprint matches 200.. run function dc_werewolf:model/sit
execute unless entity @s[tag=dc_werewolfSit] if score #SleepTimer dc_value matches 1.. run function dc_werewolf:model/sit