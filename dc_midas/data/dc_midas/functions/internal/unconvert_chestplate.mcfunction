item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.chest
function dc_midas:internal/remove_data
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.chest from entity @s weapon.mainhand
kill @s[tag=!dc_noKill]