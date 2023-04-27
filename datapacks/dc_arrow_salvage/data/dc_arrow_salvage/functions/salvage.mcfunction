execute if data entity @s Potion run tag @s add dc_potionArrow
tag @s[nbt={pickup:1b}] add dc_playerArrow

scoreboard players reset #IsStray dc_value
execute on origin if entity @s[type=stray] run scoreboard players set #IsStray dc_value 1
execute if entity @s[tag=dc_strayArrow] run say STRAY
execute if entity @s[tag=!dc_potionArrow,tag=!dc_playerArrow] if predicate dc_arrow_salvage:arrow_salvage_mob run tag @s add dc_brokenArrow
execute if entity @s[tag=!dc_potionArrow,tag=dc_playerArrow] if predicate dc_arrow_salvage:arrow_salvage_player run tag @s add dc_brokenArrow
execute if score #IsStray dc_value matches 1 if predicate dc_arrow_salvage:arrow_salvage_stray run tag @s add dc_brokenArrow

execute if score #IsStray dc_value matches 1 unless entity @s[tag=dc_brokenArrow] run function dc_arrow_salvage:convert_stray_arrow

execute if entity @s[tag=!dc_brokenArrow] run function dc_arrow_salvage:survive