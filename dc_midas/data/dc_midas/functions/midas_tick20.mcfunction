# Goldify
execute unless entity @s[tag=dc_isRaining] unless block ~ ~ ~ #drakoncore:water_type unless block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run function dc_midas:goldify/lower_half
execute unless entity @s[tag=dc_isRaining] unless block ~ ~1 ~ #drakoncore:water_type unless block ~ ~1 ~ #drakoncore:waterloggable[waterlogged=true] run function dc_midas:goldify/upper_half_and_held

# Give effects
scoreboard players set @s dc_value 0
execute if predicate dc_midas:wearing/goldified_helmet run scoreboard players add @s dc_value 1
execute if predicate dc_midas:wearing/goldified_chestplate run scoreboard players add @s dc_value 1
execute if predicate dc_midas:wearing/goldified_leggings run scoreboard players add @s dc_value 1
execute if predicate dc_midas:wearing/goldified_boots run scoreboard players add @s dc_value 1

execute if score @s dc_value matches 2.. run effect give @s minecraft:regeneration 2 0 true
execute if score @s dc_value matches 4.. run effect give @s minecraft:resistance 2 0 true
execute if predicate dc_midas:holding/goldified_mainhand run effect give @s minecraft:haste 2 1 true

# Enchant Golden Apples
tag @s add dc_midasAnchor
execute if entity @s[level=30..] as @e[type=item,distance=..5] at @s if block ~ ~-0.1 ~ minecraft:enchanting_table if predicate dc_midas:golden_apple_entity run function dc_midas:enchant/enchant_apple
tag @s remove dc_midasAnchor