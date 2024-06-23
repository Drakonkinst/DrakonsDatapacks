execute at @s run function dc_witch:spell/summon/on_succeed
execute as @e[type=item_display,tag=dc_te_model,distance=..20] run function dc_tool_embed:pickup_item
execute as @e[type=item_display,tag=dc_thrownAxe,distance=..20] run function dc_throwable_axes:drop/drop
tag @s add dc_anchor
execute as @e[type=item,distance=..20] run function dc_witch:spell/summon/tp_item
tag @s remove dc_anchor
tag @s add dc_cast_once