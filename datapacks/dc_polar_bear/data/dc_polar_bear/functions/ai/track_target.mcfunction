scoreboard players set #HasTarget dc_value 1
tag @s add dc_polarBearTarget
execute if entity @s[type=#dc_polar_bear:threats] run scoreboard players set #TrackingType dc_value 2
execute unless entity @s[type=#dc_polar_bear:threats] run scoreboard players set #TrackingType dc_value 1
execute if score #SHOW_AI dc_value matches 1 run effect give @s glowing 1 0 true