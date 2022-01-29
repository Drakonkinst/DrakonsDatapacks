execute store result score @s dc_value run xp query @s points
execute if entity @s[level=0] if score @s dc_value matches 0 run function dc_nightblood:curse
xp add @s -5 points
scoreboard players remove #NightbloodToDrain dc_value 1
execute if score #NightbloodToDrain dc_value matches 1.. unless entity @s[level=0,scores={dc_value=0}] run function dc_nightblood:unsheathed/drain_loop