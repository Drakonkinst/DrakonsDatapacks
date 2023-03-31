execute if entity @s[tag=!dc_witchFloat,level=1..] unless predicate drakoncore:on_ground unless predicate drakoncore:is_sneaking run function dc_witch:check_witch_float
execute if predicate drakoncore:on_ground run tag @s remove dc_witchFloat
execute if predicate drakoncore:is_sneaking run tag @s remove dc_witchFloat
execute if entity @s[tag=dc_witchFloat] run particle minecraft:witch ~ ~ ~ 0.25 0 0.25 0 1
execute as @e[type=item,tag=!dc_cauldronItem,tag=!dc_cauldronPotion,tag=!dc_cauldronInvalid,distance=..5] at @s if block ~ ~ ~ water_cauldron if block ~ ~-1 ~ fire run function dc_witch:brewing/register_item
execute if predicate dc_witch:has_hotv run function dc_witch:replenish_cd