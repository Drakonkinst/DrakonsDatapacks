# If stopped targeting, can start targeting again
execute if entity @s[tag=dc_polarBearStop] unless score #HasTarget dc_value matches 1 run function dc_polar_bear:ai/start_targeting

# If there is a target, make sure it aligns with polar bear's intent
execute if score #HasTarget dc_value matches 1 run function dc_polar_bear:ai/check_valid_target