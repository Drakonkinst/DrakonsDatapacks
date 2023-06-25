scoreboard players reset #HasPassengers dc_value
execute on passengers run scoreboard players add #HasPassengers dc_value 1
execute if score #HasPassengers dc_value matches 1.. run function dc_sniffer_riding:riding_tick
execute if entity @s[tag=dc_snifferMountFull] unless score #HasPassengers dc_value matches 1.. at @s run function dc_sniffer_riding:reset_riding