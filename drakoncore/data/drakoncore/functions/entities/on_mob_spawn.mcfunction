function #drakoncore:on_mob_spawn/any

# Add hooks as needed when multiple datapacks make use of this hook
execute if entity @s[type=zombie] run function #drakoncore:on_mob_spawn/zombie

# Easter egg
execute if entity @s[tag=!dc_transformed,type=zombie,nbt={IsBaby:1b}] if predicate drakoncore:zombie_easter_egg_chance run data modify entity @s CustomName set value "\"Ph1LzA\""

execute if entity @s[tag=dc_mob_removed] run function drakoncore:internal/clear_entity
tag @s add dc_mob_spawned