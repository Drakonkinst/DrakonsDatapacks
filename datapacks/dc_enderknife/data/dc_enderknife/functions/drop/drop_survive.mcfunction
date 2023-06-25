# Copy back item data after modified by Utility Armor Stand
data modify entity @s item set from storage dc_enderknife:sword_data FlyingSword

data modify storage dc_enderknife:sword_data DropType set value "collision"
playsound minecraft:item.trident.hit_ground block @a

execute store success score #Exists dc_value run function dc_tool_embed:hooks/mod_info

execute unless score #HitMob dc_value matches 1.. if score #Exists dc_value matches 1.. run function dc_enderknife:drop/special_embed

execute unless score #Exists dc_value matches 1.. run function dc_enderknife:drop/drop
execute if score #HitMob dc_value matches 1.. run function dc_enderknife:drop/drop