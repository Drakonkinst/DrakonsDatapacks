item replace entity @s weapon.mainhand with minecraft:iron_sword[minecraft:enchantments={levels:{"minecraft:sharpness":2}}]
item replace entity @s weapon.offhand with minecraft:shield[minecraft:enchantments={levels:{"minecraft:unbreaking":1}},minecraft:base_color="white",minecraft:banner_patterns=[{pattern:"minecraft:skull",color:"gray"}]]
item modify entity @s armor.head dc_revenant:enchant
item modify entity @s armor.chest dc_revenant:enchant
item modify entity @s armor.legs dc_revenant:enchant
item modify entity @s armor.feet dc_revenant:enchant
attribute @s minecraft:generic.knockback_resistance base set 0.3
attribute @s minecraft:generic.movement_speed base set 0.25
execute on target run effect give @s darkness 3 0 true
tag @s add dc_revenantUltimate

playsound minecraft:entity.husk.ambient hostile @a ~ ~ ~ 1 0.75
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.75 1
playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 0.25 1.5
particle minecraft:electric_spark ~ ~1 ~ 0.1 0.1 0.1 5 50