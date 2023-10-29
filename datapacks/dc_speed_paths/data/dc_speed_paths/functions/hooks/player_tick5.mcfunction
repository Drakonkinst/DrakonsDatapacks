# Runs 4 times per second on each player
function dc_speed_paths:check_entity
execute on vehicle if entity @s[type=#dc_speed_paths:rideables] at @s run function dc_speed_paths:check_entity