execute as @e[type=item] at @s if block ~ ~-0.2 ~ #minecraft:anvil if entity @a[distance=..5,limit=1] if predicate dc_repairable_tridents:is_trident run function dc_repairable_tridents:check_trident_repair