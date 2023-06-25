scoreboard players reset #RidingSniffer dc_value
execute on vehicle if entity @s[type=sniffer,tag=dc_snifferMount] run scoreboard players set #RidingSniffer dc_value 1
execute unless score #RidingSniffer dc_value matches 1 run function dc_sniffer_riding:feed/deinit_player_interact