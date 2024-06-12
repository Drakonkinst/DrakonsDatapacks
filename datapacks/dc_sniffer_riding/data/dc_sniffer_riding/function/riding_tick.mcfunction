tag @s add dc_currentSnifferMount
execute on passengers run function dc_sniffer_riding:do_movement
tag @s remove dc_currentSnifferMount

execute unless entity @s[tag=dc_snifferMountFull] run function dc_sniffer_riding:set_riding
execute on passengers if entity @s[tag=!dc_awaitingSnifferBoost] if predicate dc_sniffer_riding:holding_sniffer_food run function dc_sniffer_riding:feed/init_player_interact
execute on passengers if entity @s[tag=dc_awaitingSnifferBoost] unless predicate dc_sniffer_riding:holding_sniffer_food run function dc_sniffer_riding:feed/deinit_player_interact