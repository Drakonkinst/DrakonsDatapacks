# Select targets every 5 seconds if applicable

scoreboard players reset #HasTarget dc_value
execute unless score @s dc_polarBearLunge matches 1.. run scoreboard players reset @s dc_polarBearLunge
execute on target run function dc_polar_bear:ai/track_target
execute unless score @s dc_polarBearLunge matches 1.. if score #HasTarget dc_value matches 1 if entity @e[tag=dc_polarBearTarget,limit=1,distance=..16] if predicate dc_polar_bear:chance_lunge run function dc_polar_bear:lunge/lunge_at_target
execute on target run tag @s remove dc_polarBearTarget