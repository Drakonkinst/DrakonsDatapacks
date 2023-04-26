# Select targets every 5 seconds if applicable

# Polar bears can breathe for 3+ minutes underwater
execute unless block ~ ~ ~ water run data modify entity @s Air set value 3600

# Mark current target
scoreboard players reset #HasTarget dc_value
execute on target run function dc_polar_bear:ai/track_target

# Chance to lunge at current target
execute unless score @s dc_polarBearLunge matches 1.. if score #HasTarget dc_value matches 1 if entity @e[tag=dc_polarBearTarget,limit=1,distance=..20] if predicate dc_polar_bear:chance_lunge run function dc_polar_bear:lunge/lunge_at_target

# Clear lunge cooldown
execute unless score @s dc_polarBearLunge matches 1.. run scoreboard players reset @s dc_polarBearLunge

# Reset
execute on target run tag @s remove dc_polarBearTarget