recipe take @s dc_long_fall:item
function dc_long_fall:give
clear @s minecraft:knowledge_book 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] run function dc_long_fall:craft_item