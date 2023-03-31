recipe take @s dc_throwable_axes:frozen_flame
function dc_throwable_axes:give/frozen_flame
clear @s minecraft:knowledge_book 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] run function dc_throwable_axes:enchant/craft_frozen_flame