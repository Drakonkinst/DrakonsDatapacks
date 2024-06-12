tag @s add dc_outcast_target
execute as @e[type=villager,distance=..50] run function dc_witch:outcast/override_gossip
tag @s remove dc_outcast_target
execute unless entity @e[type=husk,tag=dc_outcastFear,distance=..50] run function dc_witch:outcast/summon_fear