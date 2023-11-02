# TODO: Change sounds/radius possibly
playsound minecraft:block.redstone_torch.burnout player @a ~ ~ ~ 3 2
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 3 2
particle minecraft:enchanted_hit ~ ~ ~ 1 0.5 1 1 50 normal

execute if block ~ ~ ~ #dc_throwable_bombs:redstone_breakable run setblock ~ ~ ~ minecraft:air destroy
execute if block ~1 ~ ~ #dc_throwable_bombs:redstone_breakable run setblock ~1 ~ ~ minecraft:air destroy
execute if block ~ ~ ~1 #dc_throwable_bombs:redstone_breakable run setblock ~ ~ ~1 minecraft:air destroy
execute if block ~1 ~ ~1 #dc_throwable_bombs:redstone_breakable run setblock ~1 ~ ~1 minecraft:air destroy
execute if block ~-1 ~ ~ #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~ ~ minecraft:air destroy
execute if block ~ ~ ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~ ~ ~-1 minecraft:air destroy
execute if block ~-1 ~ ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~ ~-1 minecraft:air destroy
execute if block ~1 ~ ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~1 ~ ~-1 minecraft:air destroy
execute if block ~-1 ~ ~1 #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~ ~1 minecraft:air destroy

execute if block ~ ~1 ~ #dc_throwable_bombs:redstone_breakable run setblock ~ ~1 ~ minecraft:air destroy
execute if block ~1 ~1 ~ #dc_throwable_bombs:redstone_breakable run setblock ~1 ~1 ~ minecraft:air destroy
execute if block ~ ~1 ~1 #dc_throwable_bombs:redstone_breakable run setblock ~ ~1 ~1 minecraft:air destroy
execute if block ~1 ~1 ~1 #dc_throwable_bombs:redstone_breakable run setblock ~1 ~1 ~1 minecraft:air destroy
execute if block ~-1 ~1 ~ #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~1 ~ minecraft:air destroy
execute if block ~ ~1 ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~ ~1 ~-1 minecraft:air destroy
execute if block ~-1 ~1 ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~1 ~-1 minecraft:air destroy
execute if block ~1 ~1 ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~1 ~1 ~-1 minecraft:air destroy
execute if block ~-1 ~1 ~1 #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~1 ~1 minecraft:air destroy

execute if block ~ ~-1 ~ #dc_throwable_bombs:redstone_breakable run setblock ~ ~-1 ~ minecraft:air destroy
execute if block ~1 ~-1 ~ #dc_throwable_bombs:redstone_breakable run setblock ~1 ~-1 ~ minecraft:air destroy
execute if block ~ ~-1 ~1 #dc_throwable_bombs:redstone_breakable run setblock ~ ~-1 ~1 minecraft:air destroy
execute if block ~1 ~-1 ~1 #dc_throwable_bombs:redstone_breakable run setblock ~1 ~-1 ~1 minecraft:air destroy
execute if block ~-1 ~-1 ~ #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~-1 ~ minecraft:air destroy
execute if block ~ ~-1 ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~ ~-1 ~-1 minecraft:air destroy
execute if block ~-1 ~-1 ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~-1 ~-1 minecraft:air destroy
execute if block ~1 ~-1 ~-1 #dc_throwable_bombs:redstone_breakable run setblock ~1 ~-1 ~-1 minecraft:air destroy
execute if block ~-1 ~-1 ~1 #dc_throwable_bombs:redstone_breakable run setblock ~-1 ~-1 ~1 minecraft:air destroy

kill @s