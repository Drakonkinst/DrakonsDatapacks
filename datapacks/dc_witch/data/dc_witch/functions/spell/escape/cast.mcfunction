effect give @s minecraft:levitation 1 100 true
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 3 0.9
playsound minecraft:block.amethyst_block.fall player @a ~ ~ ~ 3 1
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 3 0.5
playsound minecraft:block.bell.use player @a ~ ~ ~ 3 0
playsound minecraft:item.elytra.flying player @a ~ ~ ~ 0.1 2
particle minecraft:witch ~ ~ ~ 2 0 2 0.5 50 normal
tag @s add dc_witchFloat
function dc_witch:spell/escape/on_success