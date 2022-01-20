function dc_umbrella:mark_umbrella
function dc_umbrella:mark_umbrella_stand
playsound minecraft:item.armor.equip_generic player @a
kill @e[type=armor_stand,tag=dc_matchingUmbrella]
kill @e[type=armor_stand,tag=dc_matchingUmbrellaStand]
tag @s remove dc_hasUmbrella
tag @s remove dc_holdingUmbrella