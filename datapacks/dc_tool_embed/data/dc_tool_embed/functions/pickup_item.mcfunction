summon item ~ ~1 ~ {PickupDelay:0,Tags:["dc_pickup_item"],Item:{id:"minecraft:stick",Count:1b}}
data modify storage dc_tool_embed:blah Item set from entity @s item
# Then run /data get storage dc_tool_embed:blah
data modify entity @e[type=item,limit=1,tag=dc_pickup_item,sort=nearest] Item set from entity @s item
kill @s