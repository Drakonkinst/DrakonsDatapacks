data modify entity @s HandItems[0] set from storage dc_throwable_axes:item_data EnchantingItem
item modify entity @s weapon.mainhand dc_throwable_axes:enchant_recalling
data modify storage dc_throwable_axes:item_data EnchantingItem set from entity @s HandItems[0]