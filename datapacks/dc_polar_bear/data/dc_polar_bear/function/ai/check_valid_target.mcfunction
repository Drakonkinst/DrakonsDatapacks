# If the target's type matches the polar bear's intent, start tracking
execute if entity @s[tag=dc_aggroThreat,tag=dc_polarBearStop] if score #TrackingType dc_value matches 2 run function dc_polar_bear:ai/start_targeting
execute if entity @s[tag=dc_aggroPrey,tag=dc_polarBearStop] if score #TrackingType dc_value matches 1 run function dc_polar_bear:ai/start_targeting
 
# If the target's type does not match the polar bear's intent, stop tracking
execute if entity @s[tag=dc_aggroThreat,tag=!dc_polarBearStop] unless score #TrackingType dc_value matches 2 run function dc_polar_bear:ai/stop_targeting
execute if entity @s[tag=dc_aggroPrey,tag=!dc_polarBearStop] unless score #TrackingType dc_value matches 1 run function dc_polar_bear:ai/stop_targeting