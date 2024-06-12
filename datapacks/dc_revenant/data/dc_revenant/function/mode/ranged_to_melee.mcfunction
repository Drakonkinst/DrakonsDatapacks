item replace entity @s weapon.mainhand with minecraft:iron_sword[minecraft:enchantments={levels:{"minecraft:knockback":3}}]
execute on target run effect give @s darkness 3 0 true
attribute @s minecraft:generic.movement_speed base set 0.25
tag @s add dc_revenantMelee

playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.75 1
playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~ ~ 1 0
playsound minecraft:block.grindstone.use hostile @a ~ ~ ~ 1 .15