tag @s add dc_currentSnifferMount
execute on passengers run function dc_sniffer_riding:do_movement
tag @s remove dc_currentSnifferMount

execute unless entity @s[tag=dc_snifferMountFull] run function dc_sniffer_riding:set_riding