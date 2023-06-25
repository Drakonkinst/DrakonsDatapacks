execute if score #Rotation dc_value matches -9000 run function dc_sniffer_riding:move/up
execute if score #Rotation dc_value matches 9000 run function dc_sniffer_riding:move/down
execute if score #Rotation dc_value matches -8999..8999 run function dc_sniffer_riding:move/forward
execute if score @s dc_snifferBoost matches 1.. run function dc_sniffer_riding:decrement_boost