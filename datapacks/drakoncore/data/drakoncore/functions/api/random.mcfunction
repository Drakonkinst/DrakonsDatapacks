# Sets #Random dc_value to a random integer within full integer range
# Use modulo to scale this to a smaller range (see random_max)
# Implementation based on https://www.reddit.com/r/MinecraftCommands/comments/vv68n6
scoreboard players add #RNGSeed dc_value 1
execute store result score #Random dc_value run time query gametime
scoreboard players operation #Random dc_value *= #RNGSeed dc_value
scoreboard players operation #Random dc_value *= #314159 dc_value
scoreboard players operation #Random dc_value *= #2718281 dc_value
scoreboard players operation #Random dc_value *= #Random dc_value
scoreboard players operation #Random dc_value /= #1000 dc_value
scoreboard players operation #Random dc_value *= #314159 dc_value
scoreboard players operation #Random dc_value *= #2718281 dc_value