data modify entity @s HandItems[0] set from entity @e[type=item,tag=dc_midasAnchor,limit=1] Item
execute if data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/remove_data
data modify entity @e[type=item,tag=dc_midasAnchor,limit=1] Item set from entity @s HandItems[0]
tag @s remove dc_midasTransform