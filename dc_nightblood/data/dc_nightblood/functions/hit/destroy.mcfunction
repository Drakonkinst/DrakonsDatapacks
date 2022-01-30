particle minecraft:dust 0 0 0 4 ~ ~.5 ~ .4 .75 .4 0 40
playsound minecraft:entity.ender_dragon.hurt player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.6 1
playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 0.8

execute if predicate dc_nightblood:chance_burp run schedule function dc_nightblood:hit/burp 1s

gamerule showDeathMessages false
tag @s add dc_nbDeathReason
function drakoncore:internal/clear_entity
tag @s remove dc_nbDeathReason
gamerule showDeathMessages true