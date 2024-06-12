scoreboard players set #XPDepositAllCounter dc_value 1
function dc_xp_storage:deposit/deposit_all_recursion
scoreboard players reset #XPDepositAllCounter dc_value
playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~ 1 0