data modify entity @s HandItems[0] set from storage dc_reforest:item Item
execute if predicate dc_reforest:is_holding_sapling run scoreboard players set #IsSapling dc_value 1