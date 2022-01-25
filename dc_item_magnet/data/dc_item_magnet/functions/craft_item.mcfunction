recipe take @s dc_item_magnet:item_magnet
function dc_item_magnet:give
clear @s minecraft:knowledge_book 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] run function dc_item_magnet:craft_item