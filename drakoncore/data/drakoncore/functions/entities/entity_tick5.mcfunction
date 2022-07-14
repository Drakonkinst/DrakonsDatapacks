# Runs 4 times per second on each entity
execute if entity @s[type=marker,tag=dc_interactable] if entity @a[limit=1,distance=..5] run function drakoncore:entities/interact/tick5
function #drakoncore:entity_tick5