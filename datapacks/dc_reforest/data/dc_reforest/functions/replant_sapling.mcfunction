# Must hardcode each sapling as defined in the #minecraft:saplings tag
# Never replace existing blocks
execute if data entity @s {Item:{id:"minecraft:oak_sapling"}} run setblock ~ ~ ~ minecraft:oak_sapling keep
execute if data entity @s {Item:{id:"minecraft:spruce_sapling"}} run setblock ~ ~ ~ minecraft:spruce_sapling keep
execute if data entity @s {Item:{id:"minecraft:birch_sapling"}} run setblock ~ ~ ~ minecraft:birch_sapling keep
execute if data entity @s {Item:{id:"minecraft:jungle_sapling"}} run setblock ~ ~ ~ minecraft:jungle_sapling keep
execute if data entity @s {Item:{id:"minecraft:acacia_sapling"}} run setblock ~ ~ ~ minecraft:acacia_sapling keep
execute if data entity @s {Item:{id:"minecraft:dark_oak_sapling"}} run setblock ~ ~ ~ minecraft:dark_oak_sapling keep
execute if data entity @s {Item:{id:"minecraft:azalea"}} run setblock ~ ~ ~ minecraft:azalea keep
execute if data entity @s {Item:{id:"minecraft:flowering_azalea"}} run setblock ~ ~ ~ minecraft:flowering_azalea keep
execute if data entity @s {Item:{id:"minecraft:mangrove_propagule"}} run setblock ~ ~ ~ minecraft:mangrove_propagule keep
execute if data entity @s {Item:{id:"minecraft:cherry_sapling"}} run setblock ~ ~ ~ minecraft:cherry_sapling keep
execute if block ~ ~ ~ #minecraft:saplings run function dc_reforest:on_replant_success