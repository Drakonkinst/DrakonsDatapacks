scoreboard players remove #RaycastLength dc_value 1
execute unless entity @s[tag=dc_cast_success] positioned ^ ^ ^0.2 if block ~ ~ ~ #dc_witch:lightables[lit=false] run function dc_witch:spell/flame/light_lightables
execute unless entity @s[tag=dc_cast_success] unless block ^ ^ ^0.2 #drakoncore:air if block ~ ~ ~ #drakoncore:air run function dc_witch:spell/flame/set_flame
execute unless entity @s[tag=dc_cast_success] positioned ^ ^ ^0.2 if block ~ ~ ~ #drakoncore:air if score #RaycastLength dc_value matches 1.. run function dc_witch:spell/flame/raycast