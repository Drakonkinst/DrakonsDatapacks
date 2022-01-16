# Runs 4 times per second on each player
execute if entity @s[tag=dc_holdingUmbrella] unless predicate dc_umbrella:holding_umbrella run function dc_umbrella:delete_umbrella
execute unless entity @s[tag=dc_holdingUmbrella] if predicate dc_umbrella:holding_umbrella run tag @s add dc_holdingUmbrella