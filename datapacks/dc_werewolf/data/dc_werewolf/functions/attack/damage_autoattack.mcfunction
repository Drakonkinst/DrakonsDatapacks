scoreboard players add #TargetFound dc_value 1
execute store success score #Return dc_value run damage @s 6 minecraft:player_attack by @a[tag=dc_werewolfDamaging,limit=1]
execute if score #Return dc_value matches 1 run scoreboard players add #NumDamaged dc_value 1
execute if score #Return dc_value matches 1 at @s run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1