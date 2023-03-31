function dc_witch:brewing/item_fly
tag @s remove dc_cauldronItem
tag @s add dc_cauldronInvalid
particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0.2 25
playsound minecraft:item.bottle.empty block @a