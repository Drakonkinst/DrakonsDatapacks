scoreboard players set #dc_hit dc_value 1
# Place marker to run creation animation
execute if predicate dc_creative:portal/lodestone_south_north if predicate dc_creative:portal/amethyst_blocks_circle align xyz run function dc_creative:portal/creation/initialize/facing_east
execute if predicate dc_creative:portal/lodestone_west_east unless predicate dc_creative:portal/lodestone_south_north if predicate dc_creative:portal/amethyst_blocks_circle align xyz run function dc_creative:portal/creation/initialize/facing_north
# Add the animation delay to the portal marker
scoreboard players set @e[type=marker,tag=dc_current] dc_portalDelay1 80
tag @e[type=marker,tag=dc_current] remove dc_current
# Sound animation
playsound block.beacon.activate master @a ~ ~ ~ 1 0.4