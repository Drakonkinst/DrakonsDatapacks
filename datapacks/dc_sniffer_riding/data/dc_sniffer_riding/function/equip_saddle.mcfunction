execute as @n[type=item,predicate=dc_sniffer_riding:is_dropped_saddle,distance=..3] run function drakoncore:api/remove_1_from_item_entity
data modify entity @s NoGravity set value 1b
data modify entity @s DeathLootTable set value "dc_sniffer_riding:sniffer_mount"
effect give @s slow_falling infinite 0 true
tag @s add dc_snifferMount
playsound minecraft:entity.horse.saddle neutral @a ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0 20