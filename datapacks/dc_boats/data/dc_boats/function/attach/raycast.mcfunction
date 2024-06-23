execute as @n[type=#drakoncore:boats,distance=..1.5] run function dc_boats:attach/mark_targeted_boat
scoreboard players remove #RaycastLength dc_value 1
execute unless score #BoatFound dc_value matches 1 if score #RaycastLength dc_value matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #drakoncore:non_solid run function dc_boats:attach/raycast