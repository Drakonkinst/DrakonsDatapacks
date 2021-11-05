execute store result score @s dc_value run data get entity @s Item.tag.Damage
execute if score @s dc_value matches 1.. if block ~ ~-0.2 ~ #minecraft:anvil run tag @s add dc_foundTrident