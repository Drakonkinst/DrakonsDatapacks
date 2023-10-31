tag @s remove dc_werewolfSit

# Also reset here so that the player is not counted as sitting still for long periods of time
# When spamming crouch
scoreboard players reset @s dc_werewolfSitSprint

# If moving while crouching, small delay before sitting again
execute if score #IsSneaking dc_value matches 1 run scoreboard players set @s dc_werewolfSitSprint -5
data modify entity @s Sitting set value 0b