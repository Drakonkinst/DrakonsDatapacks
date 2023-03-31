# Runs 20 times per second on each entity

execute if entity @s[type=!#drakoncore:not_mob,type=!minecraft:player,tag=!dc_mob_spawned,tag=!dc_marker] run function drakoncore:entities/on_mob_spawn
function #drakoncore:entity_tick