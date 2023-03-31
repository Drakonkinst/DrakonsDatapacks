item replace entity @s armor.head from entity @s weapon.mainhand dc_hats:set_one
item modify entity @s weapon.mainhand dc_hats:remove_one
tellraw @s {"text":"You are now wearing an item!","color":"green"} 
playsound minecraft:item.armor.equip_generic player @s ~ ~ ~ 0.5