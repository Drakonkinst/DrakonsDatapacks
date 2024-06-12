item replace entity @s weapon.mainhand with iron_sword{Enchantments:[{id:"minecraft:sharpness",lvl:2s}]} 1
item replace entity @s weapon.offhand with shield{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],BlockEntityTag:{id:"minecraft:banner",Patterns:[{Pattern:"sku",Color:7}],Base:0}} 1
item modify entity @s armor.head dc_revenant:enchant
item modify entity @s armor.chest dc_revenant:enchant
item modify entity @s armor.legs dc_revenant:enchant
item modify entity @s armor.feet dc_revenant:enchant
attribute @s minecraft:generic.knockback_resistance base set 0.3
data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.25}]}
execute on target run effect give @s darkness 3 0 true
tag @s add dc_revenantUltimate

playsound minecraft:entity.husk.ambient hostile @a ~ ~ ~ 1 0.75
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.75 1
playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 0.25 1.5
particle minecraft:electric_spark ~ ~1 ~ 0.1 0.1 0.1 5 50