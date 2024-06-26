# Increase pickup delay to 20 ticks if dropped from collision, so it is not picked up immediately
execute if data storage dc_throwable_axes:axe_data {DropType:"collision"} run data modify entity @s PickupDelay set value 20s
data modify entity @s Item set from storage dc_throwable_axes:item_data DroppedItemData
data modify entity @s Thrower set from storage dc_throwable_axes:item_data DroppedItemData.components."minecraft:custom_data".Thrower

# If recalling, attempt to drop directly into mainhand
execute if data storage dc_throwable_axes:axe_data {DropType:"recall"} run function dc_throwable_axes:drop/drop_in_mainhand

tag @s remove dc_new