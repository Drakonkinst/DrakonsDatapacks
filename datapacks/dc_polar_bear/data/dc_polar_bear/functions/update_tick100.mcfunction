# Select targets every 5 seconds if applicable

# Polar bears can breathe for 3+ minutes underwater
execute unless block ~ ~ ~ water run data modify entity @s Air set value 3600

# Mark current target
scoreboard players reset #HasTarget dc_value
execute on target run function dc_polar_bear:ai/track_target

# If not defending against threat, check if target is too deep in the water
# Give up if it is
execute unless entity @s[tag=dc_aggroThreat] if score #HasTarget dc_value matches 1 run function dc_polar_bear:ai/check_target_too_deep

# Chance to lunge at current target
execute unless score @s dc_polarBearLunge matches 1.. if score #HasTarget dc_value matches 1 if entity @e[tag=dc_polarBearTarget,limit=1,distance=..20] if predicate dc_polar_bear:chance_lunge run function dc_polar_bear:lunge/lunge_at_target

# Clear lunge cooldown
execute unless score @s dc_polarBearLunge matches 1.. run scoreboard players reset @s dc_polarBearLunge

# Must have max food, no breeding cooldown, and not be hunting
execute unless score #HasTarget dc_value matches 1 unless score @s dc_polarBearBreed matches 1.. if score @s[tag=!dc_aggroThreat,tag=!dc_aggroPrey] dc_polarBearFood matches 48.. run function dc_polar_bear:breed/look_for_mate
execute if score @s dc_polarBearBreed matches 1.. run function dc_polar_bear:breed/decrement_cooldown

# Reset
execute on target run tag @s remove dc_polarBearTarget