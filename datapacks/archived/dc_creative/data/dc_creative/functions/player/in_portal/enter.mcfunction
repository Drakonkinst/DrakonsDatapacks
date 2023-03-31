tag @s add dc_in_portal
execute if entity @e[type=marker,tag=dc_current_portal,tag=dc_portal_facing_east] run tag @s add dc_in_portal_facing_east
execute if entity @e[type=marker,tag=dc_current_portal,tag=dc_portal_facing_north] run tag @s add dc_in_portal_facing_north
scoreboard players set @s dc_portalDelay2 60
playsound block.beacon.ambient ambient @s ~ ~ ~ 1 0.8