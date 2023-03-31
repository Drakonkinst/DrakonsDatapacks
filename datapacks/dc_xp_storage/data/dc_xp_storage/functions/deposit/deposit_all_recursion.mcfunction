function dc_xp_storage:deposit/deposit_level
scoreboard players add #XPDepositAllCounter dc_value 1
execute if score #XPDepositAllCounter dc_value matches 1..25 unless entity @s[level=0] run function dc_xp_storage:deposit/deposit_all_recursion