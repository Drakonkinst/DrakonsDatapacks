# Increase pickup delay to 20 ticks if dropped from collision, so it is not picked up immediately
execute if data storage dc_enderknife:sword_data {DropType:"collision"} run data modify entity @s PickupDelay set value 20s
data modify entity @s Item set from storage dc_enderknife:item_data DroppedItemData
data modify entity @s Thrower set from storage dc_enderknife:item_data DroppedItemData.tag.Thrower

# If blinking, attempt to drop directly into mainhand
execute if data storage dc_enderknife:sword_data {DropType:"blinking"} run function dc_enderknife:drop/drop_in_mainhand

tag @s remove dc_new