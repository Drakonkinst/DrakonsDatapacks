execute store result score @s dc_value run data get entity @s AbsorptionAmount
effect clear @s minecraft:absorption
execute if score @s dc_value matches 1..4 run effect give @s minecraft:absorption 300 0 true
execute if score @s dc_value matches 5..8 run effect give @s minecraft:absorption 300 1 true
execute if score @s dc_value matches 9..12 run effect give @s minecraft:absorption 300 2 true
execute if score @s dc_value matches 13..16 run effect give @s minecraft:absorption 300 3 true
execute if score @s dc_value matches 17.. run effect give @s minecraft:absorption 300 4 true