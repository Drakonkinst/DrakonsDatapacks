# Runs 20 times per second on each entity
execute if entity @s[type=marker,tag=dc_portal] run function dc_creative:portal/tick
execute if entity @s[type=item] if predicate dc_creative:dimension/creative_world run function dc_creative:utils/remove_item_entities