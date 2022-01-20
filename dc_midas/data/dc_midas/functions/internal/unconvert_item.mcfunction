data modify entity @s HandItems[0] set from entity @e[type=item,tag=dc_midasAnchor,limit=1] Item
function dc_midas:internal/remove_data
data modify entity @e[type=item,tag=dc_midasAnchor,limit=1] Item set from entity @s HandItems[0]
kill @s[tag=!dc_noKill]