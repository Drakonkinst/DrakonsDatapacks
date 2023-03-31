# Runs once every 5 seconds on each player
execute if entity @s[tag=dc_rocketInFlight] unless predicate drakoncore:under_sky run function dc_rocket_travel:flight/end_travel