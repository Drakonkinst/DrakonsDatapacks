# These functions could maybe be faster if we replaced first, then ran the command from the utility armor stand
# But I'm not sure it's worth performing this refactor for now
item replace entity @s weapon.mainhand from entity @e[tag=dc_midasAnchor,limit=1] armor.feet
execute unless data entity @s HandItems[0].tag.MidasTouch run function dc_midas:internal/check_item
item replace entity @e[tag=dc_midasAnchor,limit=1] armor.feet from entity @s[tag=dc_midasTransform] weapon.mainhand
function drakoncore:items/durability/mute_armor
tag @s remove dc_midasTransform