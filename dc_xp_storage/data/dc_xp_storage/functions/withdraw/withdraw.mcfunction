execute if score @s dc_storedXP matches 1.. run summon experience_orb ~ ~ ~ {Age:5995,Value:0}

execute if score @s dc_storedXP matches 10.. run function dc_xp_storage:withdraw/withdraw_10_xp
execute if score @s dc_storedXP matches 5..9 run function dc_xp_storage:withdraw/withdraw_5_xp
execute if score @s dc_storedXP matches 1..4 run function dc_xp_storage:withdraw/withdraw_1_xp