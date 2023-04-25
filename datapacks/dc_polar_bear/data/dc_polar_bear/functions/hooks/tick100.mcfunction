# Runs once every 5 seconds globally
execute as @e[type=polar_bear,tag=!dc_polarBear] if predicate dc_polar_bear:is_adult run function dc_polar_bear:setup_polar_bear
execute as @e[type=polar_bear,tag=dc_polarBear] at @s run function dc_polar_bear:ai/update_tick100