tag @s remove dc_werewolfTransformed
tag @s remove dc_werewolfCancel
scoreboard players reset @s dc_werewolfSprint
scoreboard players reset @s dc_werewolfChange
function dc_werewolf:buffs/clear_all_buffs

execute unless score @s dc_werewolfRage matches 48.. run effect give @s minecraft:weakness 10 0 false
execute if score @s dc_health matches ..0 run effect clear @s minecraft:weakness

execute if score @s dc_werewolfBones matches 1.. run tag @s add dc_werewolfNeedsBones