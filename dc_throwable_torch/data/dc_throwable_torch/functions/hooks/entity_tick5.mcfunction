# Runs 4 times per second on each entity
# Can prevent torches from being placed on a list transparent blocks later
execute if entity @s[type=item,tag=!torch_on_ground,nbt={Item:{id:"minecraft:torch",Count:1b},OnGround:1b}] if block ~ ~ ~ #drakoncore:air unless block ~ ~-1 ~ #drakoncore:air unless block ~ ~-1 ~ minecraft:torch run function dc_throwable_torch:on_ground