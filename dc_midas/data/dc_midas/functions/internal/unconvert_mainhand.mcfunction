item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] weapon.mainhand
function dc_midas:internal/remove_data
item replace entity @e[tag=dc_midasAnchor,limit=1] weapon.mainhand from entity @s weapon.mainhand
kill @s[tag=!dc_noKill]