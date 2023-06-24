execute if predicate dc_enderman:chance_endermite run summon minecraft:endermite ~ ~3 ~
execute run damage @s 5 minecraft:fall
scoreboard players remove @s dc_enderCharges 1

function dc_enderknife:blinking/display_charges
