execute store result score @s dc_value run data get entity @s AbsorptionAmount
effect clear @s minecraft:absorption
execute if score @s dc_value matches 0..3 run effect give @s minecraft:absorption 300 0 true
execute if score @s dc_value matches 4..7 run effect give @s minecraft:absorption 300 1 true
execute if score @s dc_value matches 8..11 run effect give @s minecraft:absorption 300 2 true
execute if score @s dc_value matches 12..15 run effect give @s minecraft:absorption 300 3 true
execute if score @s dc_value matches 16.. run effect give @s minecraft:absorption 300 4 true