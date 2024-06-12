data modify entity @s ShowArms set value 1b
data modify entity @s Silent set value 1b

item replace entity @s armor.head from entity @a[tag=dc_dropEquipAnchor,limit=1] armor.head
item replace entity @s armor.chest from entity @a[tag=dc_dropEquipAnchor,limit=1] armor.chest
item replace entity @s armor.legs from entity @a[tag=dc_dropEquipAnchor,limit=1] armor.legs
item replace entity @s armor.feet from entity @a[tag=dc_dropEquipAnchor,limit=1] armor.feet
item replace entity @s weapon.mainhand from entity @a[tag=dc_dropEquipAnchor,limit=1] weapon.mainhand
item replace entity @s weapon.offhand from entity @a[tag=dc_dropEquipAnchor,limit=1] weapon.offhand

# For some reason only certain damage types can damage armor stands while also dropping their gear
# Here's one that works nicely
damage @s 20 minecraft:bad_respawn_point