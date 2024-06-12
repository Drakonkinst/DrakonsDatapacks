#increment scoreboard created for each blinking enchanted weapon
scoreboard players add @s dc_enderCharges 2
function dc_enderknife:blinking/display_charges


#particles or sounds
playsound minecraft:block.portal.travel player @a ~ ~ ~ 0.1 2
particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 100