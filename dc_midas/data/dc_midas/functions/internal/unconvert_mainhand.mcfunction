item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] weapon.mainhand
execute if data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/remove_data
item replace entity @e[tag=dc_midasAnchor,limit=1] weapon.mainhand from entity @s weapon.mainhand
function dc_midas:stopsound
kill @s[tag=!dc_noKill]