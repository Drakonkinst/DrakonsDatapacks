# Create armor stand with copied item data
data modify storage dc_throwable_axes:axe_data AxeItem set from entity @s Item
execute summon armor_stand run function dc_throwable_axes:recall/copy_item_data

# Delete item
kill @s