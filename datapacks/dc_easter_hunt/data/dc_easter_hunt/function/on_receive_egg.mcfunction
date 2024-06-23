tellraw @s ["",{"text":"You found ","color":"green"},{"nbt":"Item.tag.display.Name","entity":"@n[type=item,tag=!dc_found,nbt={Item:{tag:{EasterEgg:1b}}}]","interpret":true,"bold":true},{"text":"!","color":"green"}]
data modify entity @n[type=item,tag=!dc_found,nbt={Item:{tag:{EasterEgg:1b}}}] PickupDelay set value 0s
tag @n[type=item,tag=!dc_found,nbt={Item:{tag:{EasterEgg:1b}}}] add dc_found
tag @s add dc_receivedEgg