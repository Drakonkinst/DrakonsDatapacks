tag @s add dc_currentAxeThrower
execute store result score #AxeThrower dc_temp_id run data get entity @s UUID[0]
data modify storage dc_throwable_axes:axe_data MatchingAxeFound set value 0b

# Thrown axes
execute as @e[type=item_display,tag=dc_thrownAxe,tag=!dc_recallAxe,distance=..250] if data entity @s item.tag.Returning run function dc_throwable_axes:recall/tag_item_display_if_match
execute as @e[type=item_display,tag=dc_thrownAxe,tag=dc_matchingAxe] at @s run function dc_throwable_axes:recall/axe_to_recall

# Embedded axes, ignoring ones you're already right next to
execute as @e[type=item_display,tag=dc_te_model,distance=1.1..250] if data entity @s item.tag.Returning run function dc_throwable_axes:recall/tag_item_display_if_match
execute as @e[type=item_display,tag=dc_te_model,tag=dc_matchingAxe] at @s run function dc_throwable_axes:recall/embed_to_recall

# Item axes
execute as @e[type=item,distance=..250] if data entity @s Item.tag.Throwable if data entity @s Item.tag.Returning if data entity @s Item.tag.Thrower run function dc_throwable_axes:recall/tag_item_if_match
execute as @e[type=item,tag=dc_matchingAxe] at @s run function dc_throwable_axes:recall/item_to_recall

# Play sound when recall is initiated
execute if data storage dc_throwable_axes:axe_data {MatchingAxeFound:1b} run playsound minecraft:item.trident.return player @s ~ ~ ~ 1 0.75

# Reset
# Don't actually know if this bit is faster than just @e
tag @s remove dc_currentAxeThrower
tag @e[type=item_display] remove dc_matchingAxe
tag @e[type=item] remove dc_matchingAxe