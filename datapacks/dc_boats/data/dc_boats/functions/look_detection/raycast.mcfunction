execute if entity @e[type=#drakoncore:boats,limit=1,distance=..1.5] run function dc_boats:look_detection/on_look_success
scoreboard players remove #RaycastLength dc_value 1
execute unless entity @s[tag=dc_lookingAtBoat] if score #RaycastLength dc_value matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #drakoncore:non_solid run function dc_boats:look_detection/raycast