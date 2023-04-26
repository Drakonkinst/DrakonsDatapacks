scoreboard players set #HasTarget dc_value 1
tag @s add dc_polarBearTarget
execute if entity @s[type=#dc_polar_bear:threats] run scoreboard players set #TrackingType dc_value 2
execute unless entity @s[type=#dc_polar_bear:threats] run scoreboard players set #TrackingType dc_value 1