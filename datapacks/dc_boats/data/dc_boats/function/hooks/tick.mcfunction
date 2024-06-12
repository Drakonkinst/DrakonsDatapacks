# Rotate all boats to face the same direction
# NOTE: Disabling boat-chaining functionality since Minecraft implemented their own version that serves the same purpose
execute as @e[type=#drakoncore:boats] at @s on passengers if entity @s[type=#dc_boats:match_rotation] run tp @s ~ ~ ~ ~ ~