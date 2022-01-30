execute unless predicate dc_nightblood:shield_mainhand if predicate dc_nightblood:shield_offhand run item replace entity @s weapon.offhand with air
execute if predicate dc_nightblood:shield_mainhand run item replace entity @s weapon.mainhand with air
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.6 1
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 0
execute anchored eyes run particle minecraft:dust 0 0 0 4 ^ ^ ^0.6 .3 .3 .3 0 10
advancement revoke @s only dc_nightblood:nightblood_block