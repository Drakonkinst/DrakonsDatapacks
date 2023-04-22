function dc_xp_storage:deposit/deposit_level
scoreboard players add #XPDepositAllCounter dc_value 1
execute store result score @s dc_value run xp query @s points
execute unless score #XPDepositAllCounter dc_value matches 26.. unless entity @s[level=0,scores={dc_value=0}] run function dc_xp_storage:deposit/deposit_all_recursion