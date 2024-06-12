tag @s add dc_portal_builder
scoreboard players set #dc_hit dc_value 0
scoreboard players set #dc_distance dc_value 0
function dc_creative:portal/creation/starter_block/ray_loop
tag @s remove dc_portal_builder