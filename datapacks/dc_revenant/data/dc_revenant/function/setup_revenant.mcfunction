attribute @s minecraft:generic.max_health base set 60
attribute @s minecraft:generic.movement_speed base set 0.4
attribute @s minecraft:generic.attack_damage base set 0
item replace entity @s armor.feet with iron_boots[unbreakable={},trim={material:"minecraft:iron",pattern:"minecraft:tide"}] 1
item replace entity @s armor.chest with chainmail_chestplate[unbreakable={},trim={material:"minecraft:iron",pattern:"minecraft:tide"}] 1
item replace entity @s armor.head with player_head[minecraft:profile={id:[1898654647,-370520581,-1994569282,-710270136],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE0YzI5OTA4YTYyNWUxNWZhZDE4NThlODVlMTRhNDBhY2Y5Zjc5Yjc1NjNkZWVjNDQxMmM0ZmFmMWFhNTZlMyJ9fX0="}]}]
tag @s add dc_revenant
tag @s add dc_mob_transformed
item replace entity @s weapon.mainhand with minecraft:bow[minecraft:enchantments={levels:{"minecraft:power":1}}]
effect give @s invisibility infinite 0 true
data merge entity @s {DeathLootTable:"dc_revenant:revenant",CanPickUpLoot:0b,Health:60f,CustomName:'{"text":"Revenant","color":"aqua"}',HandDropChances:[-327.670F,-327.670F],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F]}
