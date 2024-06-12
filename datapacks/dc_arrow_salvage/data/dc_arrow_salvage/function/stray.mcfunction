execute if predicate dc_arrow_salvage:arrow_salvage_stray run tag @s add dc_brokenArrow
execute unless entity @s[tag=dc_brokenArrow] run function dc_arrow_salvage:convert_stray_arrow