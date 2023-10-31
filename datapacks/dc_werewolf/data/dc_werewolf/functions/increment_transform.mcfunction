tag @s add dc_werewolfChanging
scoreboard players add @s dc_werewolfChange 1
execute if score @s dc_werewolfChange matches 2 run playsound minecraft:entity.wolf.growl player @a ~ ~ ~ 0.5 0.8
execute if score @s dc_werewolfChange matches 7 run function dc_werewolf:attempt_transform