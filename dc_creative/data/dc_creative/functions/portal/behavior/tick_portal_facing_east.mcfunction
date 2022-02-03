# Check if the lodestones still exist
execute unless predicate dc_creative:portal/lodestone_south_north run function dc_creative:portal/behavior/break_portal
# Player enter in portal
tag @s add dc_current_portal
execute align xyz positioned ~ ~1 ~-1 as @a[tag=!dc_in_portal,tag=!dc_disallowed,gamemode=!spectator,dx=0,dy=1,dz=2] run function dc_creative:player/in_portal/enter
tag @s remove dc_current_portal
# Animation
particle enchant ~ ~4 ~ 0 1 1 0.001 2