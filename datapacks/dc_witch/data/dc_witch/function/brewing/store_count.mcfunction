# Save old value
tag @s remove dc_validBrew
scoreboard players operation #OldNumPotions dc_value = @s dc_value

# Get current length
execute store result score @s dc_value run data get entity @s Item.components."minecraft:potion_contents".custom_effects

# If they are different, add modified tag
execute if score @s dc_value > #OldNumPotions dc_value run tag @s add dc_validBrew
tag @s[tag=dc_validBrew] add dc_brewSuccess