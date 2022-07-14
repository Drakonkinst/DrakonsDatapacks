# Runs once every 5 seconds on each entity

execute if entity @s[type=villager,tag=dc_interact] unless entity @a[limit=1,distance=..5] run function drakoncore:utils/clear_entity
function #drakoncore:entity_tick100