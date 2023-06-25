data modify entity @s NoGravity set value 1b
tag @s add dc_snifferMountFull
execute on passengers if entity @s[tag=!dc_awaitingSnifferBoost] run function dc_sniffer_riding:feed/init_player_interact