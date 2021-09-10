execute if data entity @s Potion run tag @s add dc_potionArrow
tag @s[nbt={pickup:1b}] add dc_playerArrow
tag @s[tag=!pickup,nbt={CustomPotionEffects:[{Id:2b,Amplifier:0b,Duration:600}]}] add dc_strayArrow
execute if predicate dc_arrow_salvage:arrow_salvage_mob run tag @s[tag=!dc_potionArrow,tag=!dc_playerArrow] add dc_brokenArrow
execute if predicate dc_arrow_salvage:arrow_salvage_player run tag @s[tag=!dc_potionArrow,tag=dc_playerArrow] add dc_brokenArrow
execute if predicate dc_arrow_salvage:arrow_salvage_stray run tag @s[tag=dc_strayArrow,tag=!pickup] add dc_brokenArrow
execute if entity @s[tag=!dc_brokenArrow] run function dc_arrow_salvage:survive