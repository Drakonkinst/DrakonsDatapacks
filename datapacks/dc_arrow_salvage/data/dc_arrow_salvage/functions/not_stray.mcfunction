execute if entity @s[tag=!dc_potionArrow,tag=!dc_playerArrow] if predicate dc_arrow_salvage:arrow_salvage_mob run tag @s add dc_brokenArrow
execute if entity @s[tag=!dc_potionArrow,tag=dc_playerArrow] if predicate dc_arrow_salvage:arrow_salvage_player run tag @s add dc_brokenArrow