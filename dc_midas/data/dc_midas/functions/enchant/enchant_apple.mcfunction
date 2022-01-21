experience add @a[tag=dc_midasAnchor,limit=1] -30 levels
data modify entity @s Item.id set value "minecraft:enchanted_golden_apple"
playsound minecraft:block.enchantment_table.use block @a
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 0
particle minecraft:entity_effect ~ ~ ~ 0 0 0 1 50