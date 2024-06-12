# Runs 20 times per second on each player
execute if score @s dc_rocketSelect matches 1.. run function dc_rocket_travel:terminal/set_destination
execute if entity @s[tag=dc_rocketInFlight] run function dc_rocket_travel:flight/fly_up