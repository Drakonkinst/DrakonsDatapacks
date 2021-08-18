# Check for items to craft, add the dc_crafted_item tag if successful
execute if entity @s[nbt={Inventory:[{id:"minecraft:skeleton_spawn_egg"}]}] run function dc_item_magnet:craft_item_magnet