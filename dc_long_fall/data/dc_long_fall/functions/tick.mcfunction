execute store result score @s dc_value run data get entity @s FallDistance
execute if score @s dc_value matches 3.. run effect give @s jump_boost 1 255 true
# Jump boost stops working after this stage
execute if score @s dc_value matches 255.. run effect give @s resistance 1 10 true
execute if score @s[tag=!dc_longFallSound] dc_value matches 5.. run function dc_long_fall:play_sound
execute if score @s[tag=dc_longFallSound] dc_value matches 0 at @s run function dc_long_fall:stop_sound