execute if predicate drakoncore:is_sneaking run scoreboard players add @s dc_hb_sneak 1
execute if score @s dc_hb_sneak matches 1.. unless predicate drakoncore:is_sneaking run scoreboard players reset @s dc_hb_sneak