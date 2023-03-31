item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.feet
execute if data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/remove_data
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.feet from entity @s[tag=dc_midasTransform] weapon.mainhand
function drakoncore:items/durability/mute_armor
kill @s[tag=!dc_noKill]
tag @s[tag=dc_noKill] remove dc_midasTransform