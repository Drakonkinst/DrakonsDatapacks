function #drakoncore:on_mob_spawn

# Easter egg
execute if entity @s[tag=!dc_transformed,type=zombie,nbt={IsBaby:1b}] if predicate drakoncore:zombie_easter_egg_chance run data modify entity @s CustomName set value "\"Ph1LzA\""

execute if entity @s[tag=dc_mob_removed] run function drakoncore:api/clear_entity
tag @s add dc_mobSpawned