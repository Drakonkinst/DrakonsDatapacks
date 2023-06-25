# Runs when a player interacts with their own player interaction entity
# Score #IsRightClick dc_value tracks whether it was a left or right click
scoreboard players reset #SnifferBoost dc_value
execute if predicate dc_sniffer_riding:holding_sniffer_food on vehicle if entity @s[type=sniffer,tag=dc_snifferMount] unless score @s dc_snifferBoost matches 1.. run function dc_sniffer_riding:feed/boost_sniffer
execute if score #SnifferBoost dc_value matches 1 run clear @s #minecraft:sniffer_food 1