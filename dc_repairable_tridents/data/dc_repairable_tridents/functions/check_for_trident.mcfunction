execute as @e[type=item,distance=..1] if predicate dc_repairable_tridents:is_trident run function dc_repairable_tridents:store_trident_data
execute if entity @e[type=item,distance=..1,tag=dc_foundTrident,limit=1] run function dc_repairable_tridents:store_shard_data