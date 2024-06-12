execute as @e[type=item,distance=..4] if predicate dc_vampire:newly_spawned_item at @s run particle minecraft:block redstone_block ~ ~1 ~ 0 0 0 0 25 normal
tag @s remove dc_blood_target