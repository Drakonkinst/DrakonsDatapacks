summon item ~ ~1 ~ {PickupDelay:0,Tags:["dc_pickup_item"],Item:{id:"minecraft:stick",count:1}}
data modify entity @n[type=item,tag=dc_pickup_item] Item set from entity @s item
kill @s