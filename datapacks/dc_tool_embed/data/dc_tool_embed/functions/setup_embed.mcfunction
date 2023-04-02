# Add Item data
data modify entity @s item set from storage dc_tool_embed:item_data Item
data modify entity @s item.tag.Thrower set from storage dc_tool_embed:item_data Item.Thrower
data modify entity @s transformation set from storage dc_tool_embed:item_data ItemTransform
tag @s add dc_te_model

# Add special tags
execute if data storage dc_tool_embed:item_data Item.tag.Throwable run function dc_tool_embed:tag_throwable
execute if data storage dc_tool_embed:item_data Item.tag.Nightblood run tag @s add dc_te_nightblood

# Rotate to face nearest player, who we assume is the thrower
execute at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Rotation[1] set value 0.0f