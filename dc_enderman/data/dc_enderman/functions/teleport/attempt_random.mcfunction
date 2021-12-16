execute store result score @s dc_value run data get entity @s foodLevel
execute if score @s[gamemode=!creative] dc_value matches ..19 run function dc_enderman:teleport/fail_tp_hungry
execute if score @s[gamemode=creative] dc_value matches ..19 run function dc_enderman:teleport/random
execute unless score @s dc_value matches ..19 run function dc_enderman:teleport/random