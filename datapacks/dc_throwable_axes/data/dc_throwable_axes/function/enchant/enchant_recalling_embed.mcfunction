data modify storage dc_throwable_axes:item_data EnchantingItem set from entity @s item
execute in minecraft:overworld as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_throwable_axes:enchant/do_enchant_recalling
data modify entity @s item set from storage dc_throwable_axes:item_data EnchantingItem