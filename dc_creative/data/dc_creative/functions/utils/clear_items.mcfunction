# Clear forbidden items
scoreboard players set @s dc_value 0

# Ender Chest
execute store result score @s dc_value run clear @s ender_chest
execute if score @s dc_value matches 1.. run tag @s add dc_found_bad_item

# Eye of Ender
execute store result score @s dc_value run clear @s ender_eye
execute if score @s dc_value matches 1.. run tag @s add dc_found_bad_item

execute if entity @s[tag=dc_found_bad_item] run title @s actionbar {"text":"That item is forbidden here!","color":"red"}
tag @s remove dc_found_bad_item