summon item ^ ^ ^-0.35 {PickupDelay:0s,Tags:["droppedWeapon"],Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[type=item,tag=droppedWeapon,sort=nearest,limit=1] Item set from entity @s HandItems[0]
data modify entity @e[type=item,tag=droppedWeapon,sort=nearest,limit=1] Thrower set from entity @s HandItems[0].tag.Thrower
tp @e[type=item,tag=droppedWeapon,sort=nearest,limit=1] @a[tag=dc_currentAxeThrower,limit=1,sort=nearest]
tag @e[type=item,tag=droppedWeapon,sort=nearest,limit=1] remove droppedWeapon
kill @s