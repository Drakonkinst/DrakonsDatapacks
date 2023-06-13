# Copy back item data after modified by Utility Armor Stand
data modify entity @s item set from storage dc_enderknife:sword_data FlyingSword

data modify storage dc_enderknife:sword_data DropType set value "collision"
playsound minecraft:item.trident.hit_ground block @a
function dc_enderknife:drop/drop