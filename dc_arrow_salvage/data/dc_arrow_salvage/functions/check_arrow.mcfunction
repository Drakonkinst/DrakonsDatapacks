execute if entity @s[tag=dc_brokenArrow] run function dc_arrow_salvage:break
execute if entity @s[tag=!dc_inGround] if predicate dc_arrow_salvage:in_ground run function dc_arrow_salvage:in_ground