execute unless entity @s[tag=creativeThrower] run function dc_throwable_axes:drop/damage_item
execute store result entity @s HandItems[0].tag.Damage int 1 run scoreboard players get @s dc_weaponDamage
summon item ^ ^ ^-0.35 {PickupDelay:12s,Tags:["droppedWeapon"],Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[type=item,tag=droppedWeapon,sort=nearest,limit=1] Item set from entity @s HandItems[0]
data modify entity @e[type=item,tag=droppedWeapon,sort=nearest,limit=1] Thrower set from entity @s HandItems[0].tag.Thrower
tag @e[type=item,tag=droppedWeapon,sort=nearest,limit=1] remove droppedWeapon
playsound minecraft:item.trident.hit_ground ambient @a
kill @s