# Runs on Utility Armor Stand
data modify entity @s HandItems[0] set from storage dc_tool_embed:item_data Item
execute if predicate dc_tool_embed:holding_embeddable run scoreboard players set #ItemMatches dc_value 1