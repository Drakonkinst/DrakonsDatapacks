item replace entity @s weapon.mainhand with minecraft:bow[minecraft:enchantments={levels:{"minecraft:power":1}}]
execute on target run effect give @s darkness 3 0 true
attribute @s minecraft:generic.movement_speed base set 0.4
tag @s remove dc_revenantMelee

playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.75 1
playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~ ~ 1 0
playsound minecraft:item.crossbow.loading_middle hostile @a ~ ~ ~ 2 1