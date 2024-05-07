# Add Item data
tag @s remove dc_thrownSword
tag @s add dc_embed_no_drop
tag @s add dc_te_model
tag @s add dc_long_pickup

execute at @s run tp ^ ^ ^-.85

# Add special tags
execute if data entity @s item.components."minecraft:custom_data".Throwable run function dc_tool_embed:tag_throwable
execute if data entity @s item.components."minecraft:custom_data".Nightblood run tag @s add dc_te_nightblood