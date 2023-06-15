# Add Item data
tag @s remove dc_thrownSword
tag @s add dc_embed_no_drop
tag @s add dc_te_model
tag @s add dc_long_pickup

data modify entity @s brightness set value {block:15,sky:15}

execute at @s run tp ^ ^ ^-.9

# Add special tags
execute if data entity @s item.tag.Throwable run function dc_tool_embed:tag_throwable
execute if data entity @s item.tag.Nightblood run tag @s add dc_te_nightblood