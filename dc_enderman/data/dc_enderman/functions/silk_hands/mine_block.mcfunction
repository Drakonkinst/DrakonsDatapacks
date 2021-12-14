execute if block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] run setblock ~ ~ ~ water replace
execute if block ~ ~ ~ #drakoncore:always_waterlogged run setblock ~ ~ ~ water replace
execute unless block ~ ~ ~ #drakoncore:waterloggable[waterlogged=true] unless block ~ ~ ~ #drakoncore:always_waterlogged unless block ~ ~ ~ #drakoncore:water run setblock ~ ~ ~ air replace
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.5
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:portal ~ ~-1 ~ 0.1 0.1 0.1 0 25