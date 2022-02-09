# Runs 4 times per second on each player
execute if entity @s[tag=dc_hasUmbrella] unless predicate dc_umbrella:holding_umbrella run function dc_umbrella:delete_umbrella
execute if entity @s[tag=dc_hasUmbrella] if entity @s[gamemode=spectator] run function dc_umbrella:delete_umbrella
execute unless entity @s[gamemode=spectator] if predicate dc_umbrella:holding_umbrella run tag @s add dc_hasUmbrella
tag @s[tag=dc_hasUmbrella,gamemode=!spectator] add dc_holdingUmbrella