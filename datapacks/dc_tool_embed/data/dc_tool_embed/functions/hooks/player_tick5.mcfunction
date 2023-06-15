# Runs 4 times per second on each player
execute if predicate drakoncore:is_sneaking positioned ~ ~-0.5 ~ as @e[type=item_display,tag=dc_te_model,tag=!dc_te_nopickup,limit=1,distance=..1] run function dc_tool_embed:pickup_item
execute if predicate drakoncore:is_sneaking positioned ~ ~ ~ as @e[type=item_display,tag=dc_te_model,tag=!dc_te_nopickup,tag=dc_long_pickup,limit=1,distance=..3] run function dc_tool_embed:pickup_item
