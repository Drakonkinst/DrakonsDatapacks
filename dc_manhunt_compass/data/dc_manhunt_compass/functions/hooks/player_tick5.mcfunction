# Runs 4 times per second on each player
execute if entity @s[tag=dc_hunter] if entity @a[tag=dc_speedrunner,limit=1] run function dc_manhunt_compass:attempt_update_compass