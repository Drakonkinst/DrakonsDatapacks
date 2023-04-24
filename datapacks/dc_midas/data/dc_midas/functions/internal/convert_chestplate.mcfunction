item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.chest
execute unless data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/check_item
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.chest from entity @s[tag=dc_midasTransform] weapon.mainhand
function drakoncore:items/durability/mute_armor
tag @s remove dc_midasTransform