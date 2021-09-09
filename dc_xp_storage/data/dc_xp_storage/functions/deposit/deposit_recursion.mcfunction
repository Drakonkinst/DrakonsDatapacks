# deposit 64 points if possible
execute if score @s dc_value matches 64.. run function dc_xp_storage:deposit/deposit_64

# deposit 32 points if possible
execute if score @s dc_value matches 32.. run function dc_xp_storage:deposit/deposit_32

# deposit 16 points if possible
execute if score @s dc_value matches 16.. run function dc_xp_storage:deposit/deposit_16

# deposit 8 points if possible
execute if score @s dc_value matches 8.. run function dc_xp_storage:deposit/deposit_8

# deposit 4 points if possible
execute if score @s dc_value matches 4.. run function dc_xp_storage:deposit/deposit_4

# deposit 2 points if possible
execute if score @s dc_value matches 2.. run function dc_xp_storage:deposit/deposit_2

# deposit 1 points if possible
execute if score @s dc_value matches 1.. run function dc_xp_storage:deposit/deposit_1

# recursion
scoreboard players add #LoopCounter dc_value 1
execute unless score @s dc_value matches 0 unless score #LoopCounter dc_value matches 100.. run function dc_xp_storage:deposit/deposit_recursion