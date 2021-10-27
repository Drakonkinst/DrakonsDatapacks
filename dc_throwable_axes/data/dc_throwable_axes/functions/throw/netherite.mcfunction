function dc_throwable_axes:throw/throw_axe
data modify entity @e[type=armor_stand,tag=dc_newAxe,sort=nearest,limit=1] HandItems[0] set from entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s,Item:{id:"minecraft:netherite_axe"}}] Item
kill @e[type=item,sort=nearest,limit=1,nbt={Age:0s,Item:{id:"minecraft:netherite_axe"}}]
function dc_throwable_axes:throw/finish_throw