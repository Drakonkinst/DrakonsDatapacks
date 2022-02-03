# Locate at least one prismarine shard in the same block
# If one is found, also check the nearest player
execute as @e[type=item,dx=0,predicate=dc_repairable_tridents:is_prismarine_shard,limit=1] run tag @s add dc_prismarineShard
execute if entity @e[type=item,tag=dc_prismarineShard,limit=1] as @p[distance=..5] unless entity @s[level=..0,gamemode=!creative] run tag @s add dc_anvilCrafting

# If all requirements met, dc_anvilCrafting will exist
execute if entity @a[tag=dc_anvilCrafting] run function dc_repairable_tridents:repair_trident

# Reset
tag @e[type=item,dx=0] remove dc_prismarineShard
tag @a remove dc_anvilCrafting
