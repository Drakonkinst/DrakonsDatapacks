item replace entity @s weapon.mainhand with iron_sword{Enchantments:[{id:"minecraft:knockback",lvl:3s}]} 1
execute on target run effect give @s darkness 3 0 true
data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.25}]}
tag @s add dc_revenantMelee

playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.75 1
playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~ ~ 1 0
playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 .15