tag @s add dc_dropEquipAnchor
execute summon armor_stand run function dc_werewolf:drop/copy_and_drop
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
execute as @e[type=item,distance=..2] run function dc_werewolf:drop/add_pickup_delay
tag @s remove dc_dropEquipAnchor
stopsound @a * minecraft:entity.armor_stand.break
playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.5 0.5