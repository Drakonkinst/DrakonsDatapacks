# Deposit one level from player into ender chest

# Loop will remove (all points in level + 1) points to remove 1 player level
execute store result score @s dc_value run xp query @s points
execute unless entity @s[level=0] run scoreboard players add @s dc_value 1

scoreboard players set #LoopCounter dc_value 0
execute if score @s dc_value matches 1.. run function dc_xp_storage:deposit/deposit_recursion
scoreboard players reset #LoopCounter dc_value

execute unless score #XPDepositAllCounter dc_value matches 1.. run playsound minecraft:entity.experience_orb.pickup block @s
