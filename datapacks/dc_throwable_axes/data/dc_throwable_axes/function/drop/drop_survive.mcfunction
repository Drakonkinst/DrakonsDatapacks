# Copy back item data after modified by Utility Armor Stand
data modify entity @s item set from storage dc_throwable_axes:axe_data FlyingAxe

data modify storage dc_throwable_axes:axe_data DropType set value "collision"
playsound minecraft:item.trident.hit_ground block @a
function dc_throwable_axes:drop/drop