data modify storage drakoncore:item Item set from entity @s item
summon item ~ ~ ~ {Item:{id:"minecraft:stick",count:1},Tags:["dc_newItem"]}
execute as @e[type=item,tag=dc_newItem,limit=1,distance=..1] run function drakoncore:internal/items/setup_converted_item
kill @s[type=item_display]