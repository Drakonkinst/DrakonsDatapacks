item replace entity @s weapon.mainhand with bow{Enchantments:[{id:"minecraft:power",lvl:1s}]} 1
execute on target run effect give @s darkness 3 0 true
data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.4}]}
tag @s remove dc_revenantMelee

playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.75 1
playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~ ~ 1 0
playsound minecraft:item.crossbow.loading_middle hostile @a ~ ~ ~ 2 1