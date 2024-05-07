tag @s add dc_roombaGoForward
execute store result score #Random dc_value run random value 2..7
scoreboard players operation @s dc_roombaTimer = #Random dc_value