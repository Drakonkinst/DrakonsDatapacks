execute if block ~ ~ ~ #dc_creative:portal_starter run function dc_creative:portal/creation/starter_block/ray_hit
scoreboard players add #dc_distance dc_value 1
execute if score #dc_hit dc_value matches 0 if score #dc_distance dc_value matches ..50 positioned ^ ^ ^0.1 run function dc_creative:portal/creation/starter_block/ray_loop