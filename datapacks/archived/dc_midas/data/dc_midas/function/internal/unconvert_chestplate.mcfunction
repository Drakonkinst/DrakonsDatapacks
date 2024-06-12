item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.chest
execute if data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/remove_data
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.chest from entity @s[tag=dc_midasTransform] weapon.mainhand
function drakoncore:api/mute_armor_equip_sounds
tag @s remove dc_midasTransform