tag @s remove dc_werewolfTransformed
tag @s remove dc_werewolfCancel
scoreboard players reset @s dc_werewolfSprint
scoreboard players reset @s dc_werewolfChange
function dc_werewolf:buffs/clear_all_buffs

execute unless score @s dc_werewolfRage matches 24.. run effect give @s minecraft:weakness 10 0 false
execute if score @s dc_werewolfRage matches 24..47 run effect give @s minecraft:weakness 5 0 false
execute if score @s dc_health matches ..0 run effect clear @s minecraft:weakness

execute unless score @s dc_werewolfRage matches 48.. run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.1 1.75
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.5
function dc_werewolf:play_sound_for_stage

execute if score @s dc_werewolfBones matches 1.. run tag @s add dc_werewolfNeedsBones