# Runs 20 times per second on each player

# Copy vampire bat flight entry mechanic
execute if entity @s[tag=dc_awaitingSnifferBoost] run function dc_sniffer_riding:check_if_riding
execute if entity @s[tag=dc_wasSneaking] unless predicate drakoncore:is_sneaking if block ~ ~-0.9 ~ #drakoncore:non_solid if entity @e[type=sniffer,tag=dc_snifferMount,tag=!dc_snifferMountFull,distance=..3,limit=1] run function dc_sniffer_riding:mount_nearest_sniffer
execute if predicate drakoncore:is_sneaking run tag @s add dc_wasSneaking
execute unless predicate drakoncore:is_sneaking run tag @s remove dc_wasSneaking