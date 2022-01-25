recipe take @s dc_umbrella:umbrella
function dc_umbrella:give
clear @s minecraft:knowledge_book 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] run function dc_umbrella:craft_item