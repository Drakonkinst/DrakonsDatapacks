scoreboard players set #HasTarget dc_value 1
tag @s add dc_polarBearTarget

# Set #TrackingType depending on whether Polar Bear is tracking a threat or not
execute if entity @s[type=#dc_polar_bear:threats] run scoreboard players set #TrackingType dc_value 2
execute unless entity @s[type=#dc_polar_bear:threats] run scoreboard players set #TrackingType dc_value 1

# Debug visualization that can be managed in config
execute if score #SHOW_AI dc_value matches 1 run effect give @s glowing 1 0 true