item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.head
function dc_midas:internal/remove_data
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.head from entity @s weapon.mainhand
kill @s[tag=!dc_noKill]