execute store result score #Age dc_value run data get entity @s Age
tag @s add dc_torchOnGround
execute if score #Age dc_value matches 15.. run function dc_throwable_torch:place_thrown_torch