recipe take @s dc_throwable_axes:throwing_grip
function dc_throwable_axes:give/throwing_grip
clear @s minecraft:knowledge_book 1
execute if entity @s[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] run function dc_throwable_axes:enchant/craft_throwing_grip