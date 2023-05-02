execute if block ~ ~ ~ minecraft:damaged_anvil run function drakoncore:internal/items/anvil_crafting/destroy_anvil

execute if block ~ ~ ~ minecraft:chipped_anvil[facing=north] run setblock ~ ~ ~ minecraft:damaged_anvil[facing=north]
execute if block ~ ~ ~ minecraft:chipped_anvil[facing=east] run setblock ~ ~ ~ minecraft:damaged_anvil[facing=east]
execute if block ~ ~ ~ minecraft:chipped_anvil[facing=south] run setblock ~ ~ ~ minecraft:damaged_anvil[facing=south]
execute if block ~ ~ ~ minecraft:chipped_anvil[facing=west] run setblock ~ ~ ~ minecraft:damaged_anvil[facing=west]

execute if block ~ ~ ~ minecraft:anvil[facing=north] run setblock ~ ~ ~ minecraft:chipped_anvil[facing=north]
execute if block ~ ~ ~ minecraft:anvil[facing=east] run setblock ~ ~ ~ minecraft:chipped_anvil[facing=east]
execute if block ~ ~ ~ minecraft:anvil[facing=south] run setblock ~ ~ ~ minecraft:chipped_anvil[facing=south]
execute if block ~ ~ ~ minecraft:anvil[facing=west] run setblock ~ ~ ~ minecraft:chipped_anvil[facing=west]