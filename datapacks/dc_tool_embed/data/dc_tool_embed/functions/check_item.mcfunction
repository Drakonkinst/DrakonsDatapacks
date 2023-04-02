# Store item data
data modify storage dc_tool_embed:item_data Item set from entity @s Item
data modify storage dc_tool_embed:item_data ItemMatches set value 0b

# Move item to utility armorstand to check its held item with a predicate
# using an item tag. Should (hopefully) be more efficient than NBT checks
execute as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_tool_embed:check_stored_item
execute if data storage dc_tool_embed:item_data {ItemMatches:1b} run function dc_tool_embed:create_embed

# Mark item as searched so we don't look at it again
tag @s add dc_te_searched