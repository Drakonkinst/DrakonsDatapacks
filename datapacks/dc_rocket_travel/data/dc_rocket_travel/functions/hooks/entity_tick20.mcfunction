# Runs once per second on each entity
execute if entity @s[type=marker,tag=dc_launchpad,tag=dc_active] run function dc_rocket_travel:launchpad/tick20