execute store result score #AxeThrower dc_temp_id run data get entity @s UUID[0]

# Thrown axes
execute as @e[type=armor_stand,tag=dc_thrownAxe,tag=!dc_recallAxe,distance=..200] if data entity @s HandItems[0].tag.Returning run function dc_throwable_axes:recall/tag_armorstand_if_match
tag @e[type=armor_stand,tag=dc_thrownAxe,tag=dc_matchingAxe] add dc_recallAxe

# Embedded axes, ignoring ones you're already right next to
execute as @e[type=armor_stand,tag=dc_te_model,distance=1.1..200] if data entity @s HandItems[0].tag.Returning run function dc_throwable_axes:recall/tag_armorstand_if_match
execute as @e[type=armor_stand,tag=dc_te_model,tag=dc_matchingAxe] run function dc_throwable_axes:recall/embed_to_model

# Item axes
execute as @e[type=item,distance=..200] if data entity @s Item.tag.Throwable if data entity @s Item.tag.Returning if data entity @s Item.tag.Thrower run function dc_throwable_axes:recall/tag_item_if_match
# Gotta do this while the item's still alive
execute if entity @e[type=item,tag=dc_matchingAxe,limit=1] run tag @s add dc_axeFound
execute if entity @e[type=armor_stand,tag=dc_matchingAxe,limit=1] run tag @s add dc_axeFound
execute as @e[type=item,tag=dc_matchingAxe] at @s run function dc_throwable_axes:recall/item_to_model
#execute at @s run function dc_throwable_axes:recall/item_to_model

execute if entity @s[tag=dc_axeFound] run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.75

# Reset
tag @s remove dc_axeFound
# Don't actually know if this bit is faster than just @e
tag @e[type=armor_stand] remove dc_matchingAxe
tag @e[type=item] remove dc_matchingAxe