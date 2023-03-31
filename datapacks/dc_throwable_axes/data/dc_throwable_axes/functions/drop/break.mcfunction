playsound minecraft:item.trident.hit_ground block @a
playsound minecraft:entity.item.break block @a
# Replaced by the drakoncore durability module
#execute if entity @s[nbt={HandItems:[{id:"minecraft:wooden_axe"},{}]}] run particle item minecraft:wooden_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
#execute if entity @s[nbt={HandItems:[{id:"minecraft:stone_axe"},{}]}] run particle item minecraft:stone_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
#execute if entity @s[nbt={HandItems:[{id:"minecraft:golden_axe"},{}]}] run particle item minecraft:golden_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
#execute if entity @s[nbt={HandItems:[{id:"minecraft:iron_axe"},{}]}] run particle item minecraft:iron_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
#execute if entity @s[nbt={HandItems:[{id:"minecraft:diamond_axe"},{}]}] run particle item minecraft:diamond_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
#execute if entity @s[nbt={HandItems:[{id:"minecraft:netherite_axe"},{}]}] run particle item minecraft:netherite_axe ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8
kill @s