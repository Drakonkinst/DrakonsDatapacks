# Calculate percentage
scoreboard players operation @s dc_value = @s dc_bloodLevel
scoreboard players operation @s dc_value *= #100 dc_value
scoreboard players operation @s dc_value /= #600 dc_value

# Display
execute if predicate dc_vampire:is_dark run function dc_vampire:display/dark
execute unless predicate dc_vampire:is_dark run function dc_vampire:display/light