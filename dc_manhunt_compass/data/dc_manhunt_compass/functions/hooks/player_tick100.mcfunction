# Runs once every 5 seconds on each player
execute store result score @s dc_value run clear @s minecraft:compass{dc_manhunt_compass:1b} 0
execute if score @s[tag=dc_hunter] dc_value matches 2.. run clear @s minecraft:compass{dc_manhunt_compass:1b}
execute if score @s[tag=!dc_hunter] dc_value matches 1.. run clear @s minecraft:compass{dc_manhunt_compass:1b}
execute if entity @s[tag=dc_speedrunner] unless entity @e[type=armor_stand,tag=dc_manhunt_anchor,limit=1] run function dc_manhunt_compass:summon_anchor