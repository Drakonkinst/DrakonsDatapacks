summon item ~ ~1 ~ {PickupDelay:0,Tags:["dc_pickup_item"],Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[type=item,limit=1,tag=dc_pickup_item,sort=nearest] Item set from entity @s HandItems[0]
kill @s