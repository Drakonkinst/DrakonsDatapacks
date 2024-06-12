playsound minecraft:item.bottle.fill player @a ~ ~ ~ 0.5 0
execute if predicate dc_witch:is_potion unless predicate dc_witch:is_water_bottle run tag @s add dc_cauldronPotion
tag @s[tag=!dc_cauldronPotion] add dc_cauldronItem