playsound minecraft:item.trident.hit_ground ambient @a
playsound minecraft:entity.item.break ambient @a
execute if entity @s[nbt={HandItems:[{id:"minecraft:wooden_sword"},{}]}] run particle item minecraft:wooden_sword ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone_sword"},{}]}] run particle item minecraft:stone_sword ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:golden_sword"},{}]}] run particle item minecraft:golden_sword ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:iron_sword"},{}]}] run particle item minecraft:iron_sword ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:diamond_sword"},{}]}] run particle item minecraft:diamond_sword ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:netherite_sword"},{}]}] run particle item minecraft:netherite_sword ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:wooden_axe"},{}]}] run particle item minecraft:wooden_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone_axe"},{}]}] run particle item minecraft:stone_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:golden_axe"},{}]}] run particle item minecraft:golden_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:iron_axe"},{}]}] run particle item minecraft:iron_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:diamond_axe"},{}]}] run particle item minecraft:diamond_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
execute if entity @s[nbt={HandItems:[{id:"minecraft:netherite_axe"},{}]}] run particle item minecraft:netherite_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
kill @s