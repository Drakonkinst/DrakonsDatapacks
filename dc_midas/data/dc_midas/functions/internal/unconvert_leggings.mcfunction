item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.legs
execute if data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/remove_data
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.legs from entity @s[tag=dc_midasTransform] weapon.mainhand
function dc_midas:stopsound
kill @s[tag=!dc_noKill]
tag @s[tag=dc_noKill] remove dc_midasTransform