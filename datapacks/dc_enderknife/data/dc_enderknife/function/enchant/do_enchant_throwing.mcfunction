data modify entity @s HandItems[0] set from storage dc_enderknife:item_data EnchantingItem
item modify entity @s weapon.mainhand dc_enderknife:enchant_throwing
data modify storage dc_enderknife:item_data EnchantingItem set from entity @s HandItems[0]