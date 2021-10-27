execute store result score @s dc_weaponDamage run data get entity @s HandItems[0].tag.Damage

# bypass damage removal if creative thrower
execute if entity @s[tag=creativeThrower] run function dc_throwable_axes:drop/success

# axes
#wooden
execute if score @s[nbt={HandItems:[{id:"minecraft:wooden_axe"},{}]}] dc_weaponDamage matches 58.. run function dc_throwable_axes:drop/break
execute if score @s[nbt={HandItems:[{id:"minecraft:wooden_axe"},{}]}] dc_weaponDamage matches ..57 run function dc_throwable_axes:drop/success

#stone
execute if score @s[nbt={HandItems:[{id:"minecraft:stone_axe"},{}]}] dc_weaponDamage matches 130.. run function dc_throwable_axes:drop/break
execute if score @s[nbt={HandItems:[{id:"minecraft:stone_axe"},{}]}] dc_weaponDamage matches ..129 run function dc_throwable_axes:drop/success

#golden
execute if score @s[nbt={HandItems:[{id:"minecraft:golden_axe"},{}]}] dc_weaponDamage matches 31.. run function dc_throwable_axes:drop/break
execute if score @s[nbt={HandItems:[{id:"minecraft:golden_axe"},{}]}] dc_weaponDamage matches ..30 run function dc_throwable_axes:drop/success

#iron
execute if score @s[nbt={HandItems:[{id:"minecraft:iron_axe"},{}]}] dc_weaponDamage matches 249.. run function dc_throwable_axes:drop/break
execute if score @s[nbt={HandItems:[{id:"minecraft:iron_axe"},{}]}] dc_weaponDamage matches ..248 run function dc_throwable_axes:drop/success

#diamond
execute if score @s[nbt={HandItems:[{id:"minecraft:diamond_axe"},{}]}] dc_weaponDamage matches 1560.. run function dc_throwable_axes:drop/break
execute if score @s[nbt={HandItems:[{id:"minecraft:diamond_axe"},{}]}] dc_weaponDamage matches ..1559 run function dc_throwable_axes:drop/success

#netherite
execute if score @s[nbt={HandItems:[{id:"minecraft:netherite_axe"},{}]}] dc_weaponDamage matches 2030.. run function dc_throwable_axes:drop/break
execute if score @s[nbt={HandItems:[{id:"minecraft:netherite_axe"},{}]}] dc_weaponDamage matches ..2029 run function dc_throwable_axes:drop/success