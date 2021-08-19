function #drakoncore:on_mob_spawn/any

# Add hooks as needed when multiple datapacks make use of this hook
execute if entity @s[type=zombie] run function #drakoncore:on_mob_spawn/zombie

execute if entity @s[tag=dc_mob_removed] run function drakoncore:internal/clear_entity
tag @s add dc_mob_spawned