# Check for items to craft, add the dc_crafted_item tag if successful
execute if entity @s[nbt={Inventory:[{id:"minecraft:phantom_spawn_egg"}]}] run function dc_umbrella:craft_umbrella