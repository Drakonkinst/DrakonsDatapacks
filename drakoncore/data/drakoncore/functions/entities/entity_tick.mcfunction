# Runs 20 times per second on each entity

execute if entity @s[type=!#drakoncore:not_mob,tag=!dc_mob_spawned] run function drakoncore:entities/on_mob_spawn
function #drakoncore:entity_tick