item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.feet
function dc_midas:internal/remove_data
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.feet from entity @s weapon.mainhand
kill @s[tag=!dc_noKill]