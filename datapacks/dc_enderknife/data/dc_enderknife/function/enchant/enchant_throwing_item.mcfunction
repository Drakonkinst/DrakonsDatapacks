summon minecraft:armor_stand ~ -100 ~ {Invisible:1b,Small:1b,Marker:1b,NoGravity:1b,Tags:["dc_itemHolder"]}
data modify entity @e[type=armor_stand,tag=dc_itemHolder,limit=1] HandItems[0] set from entity @s Item
item modify entity @e[type=armor_stand,tag=dc_itemHolder,limit=1] weapon.mainhand dc_enderknife:enchant_throwing
data modify entity @s Item set from entity @e[type=armor_stand,tag=dc_itemHolder,limit=1] HandItems[0]
kill @e[type=armor_stand,tag=dc_itemHolder,limit=1]