scoreboard players operation #CurrentId dc_playerId = @s dc_playerId
execute as @e[type=armor_stand,tag=dc_umbrella] if score @s dc_playerId = #CurrentId dc_playerId run kill @s
execute as @e[type=armor_stand,tag=dc_umbrellaStand] if score @s dc_playerId = #CurrentId dc_playerId run kill @s
playsound minecraft:item.armor.equip_generic player @a
tag @s remove dc_hasUmbrella
tag @s remove dc_holdingUmbrella