# Runs 4 times per second globally

# AI needs to run at this frequency, any slower and it doesn't work :/
execute as @e[type=polar_bear,tag=dc_polarBear] at @s run function dc_polar_bear:ai/update_tick5