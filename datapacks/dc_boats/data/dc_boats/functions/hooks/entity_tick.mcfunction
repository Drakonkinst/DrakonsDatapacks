# Runs 20 times per second on each entity

# Rotate all boats to face the same direction
execute if entity @s[type=#drakoncore:boats] on passengers if entity @s[type=#dc_boats:match_rotation] run tp @s ~ ~ ~ ~ ~