execute at @s run function dc_witch:spell/summon/on_succeed
execute as @e[type=armor_stand,tag=dc_te_model,distance=..20] run function dc_tool_embed:pickup_item
tag @s add dc_anchor
execute as @e[type=item,distance=..20] run function dc_witch:spell/summon/tp_item
tag @s remove dc_anchor
tag @s add dc_cast_once