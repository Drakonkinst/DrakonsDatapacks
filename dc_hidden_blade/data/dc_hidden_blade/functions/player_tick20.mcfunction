execute if predicate drakoncore:is_sneaking run scoreboard players add @s dc_HB_sneak 1
execute if score @s dc_HB_sneak matches 1.. unless predicate drakoncore:is_sneaking run scoreboard players set @s dc_HB_sneak 0