item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.legs
execute unless data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/check_item
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.legs from entity @s weapon.mainhand
function dc_midas:stopsound
kill @s[tag=!dc_noKill]