data modify storage dc_enderknife:item_data DroppedItemData set from entity @s item
summon item ~ ~ ~ {Tags:["dc_new"],PickupDelay:0s,Item:{id:"minecraft:stick",count:1},Invulnerable:1b}
execute as @e[type=item,distance=..1,tag=dc_new] run function dc_enderknife:drop/setup_dropped_item
kill @s