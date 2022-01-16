function dc_umbrella:mark_umbrella
function dc_umbrella:mark_umbrella_stand
playsound minecraft:item.armor.equip_generic player @a
kill @e[type=armor_stand,tag=dc_matchingUmbrella,limit=1]
kill @e[type=armor_stand,tag=dc_matchingUmbrellaStand,limit=1]
tag @s remove dc_holdingUmbrella