item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.feet
execute unless data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/check_item
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.feet from entity @s weapon.mainhand
kill @s[tag=!dc_noKill]