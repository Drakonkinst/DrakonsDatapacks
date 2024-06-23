loot replace entity @s weapon.mainhand mine ~ ~ ~ minecraft:shears[minecraft:enchantments={levels:{"minecraft:silk_touch":1}}]
execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={levels:{"minecraft:silk_touch":1}}]
execute if data entity @s SelectedItem run function dc_enderman:silk_hands/mine_block