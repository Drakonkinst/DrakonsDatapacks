execute rotated as @a[tag=dc_snifferDriver,limit=1] run tp @s ~ ~ ~ ~ 0
execute at @s unless block ^ ^ ^2.1 #drakoncore:non_solid run function dc_sniffer_riding:move/up

# Tick twice to make base speed faster
execute at @s if block ^ ^ ^2.1 #drakoncore:non_solid run tp @s ^ ^ ^0.1
execute if score #HoldingFood dc_value matches 1 at @s if block ^ ^ ^2.1 #drakoncore:non_solid run tp @s ^ ^ ^0.1

# We want to be accurate with this check, so just run it a bunch for now
execute if score @s dc_snifferBoost matches 1.. at @s if block ^ ^ ^2.1 #drakoncore:non_solid run tp @s ^ ^ ^0.1
execute if score @s dc_snifferBoost matches 1.. at @s if block ^ ^ ^2.1 #drakoncore:non_solid run tp @s ^ ^ ^0.1
execute if score @s dc_snifferBoost matches 1.. unless score #HoldingFood dc_value matches 1 at @s if block ^ ^ ^2.1 #drakoncore:non_solid run tp @s ^ ^ ^0.1