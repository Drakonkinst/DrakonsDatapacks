
loot replace entity @s weapon.mainhand mine ~ ~ ~ minecraft:shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute unless data entity @s SelectedItem run loot replace entity @s weapon.mainhand mine ~ ~ ~ minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute if data entity @s SelectedItem run function dc_enderman:silk_hands/mine_block