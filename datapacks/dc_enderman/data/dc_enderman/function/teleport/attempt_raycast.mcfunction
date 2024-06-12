execute store result score #FoodLevel dc_value run data get entity @s foodLevel
execute unless entity @s[gamemode=creative] if score #FoodLevel dc_value matches ..19 run function dc_enderman:teleport/fail_tp_hungry
execute if entity @s[gamemode=creative] if score #FoodLevel dc_value matches ..19 run function dc_enderman:teleport/init_raycast
execute unless score #FoodLevel dc_value matches ..19 run function dc_enderman:teleport/init_raycast