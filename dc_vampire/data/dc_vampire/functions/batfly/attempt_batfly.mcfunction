execute anchored eyes positioned ~ ~1 ~ unless block ^ ^ ^0.4 #drakoncore:non_solid run title @s actionbar {"text":"Not enough space!","color":"red"}
execute unless predicate dc_vampire:is_dark run title @s actionbar {"text":"Not dark enough!","color":"red"}
execute unless score @s dc_bloodLevel matches 1.. run title @s actionbar {"text":"Not enough blood!","color":"red"}
execute if score @s dc_bloodLevel matches 1.. if predicate dc_vampire:is_dark anchored eyes positioned ~ ~1 ~ if block ^ ^ ^0.4 #drakoncore:non_solid run function dc_vampire:batfly/enter_batfly