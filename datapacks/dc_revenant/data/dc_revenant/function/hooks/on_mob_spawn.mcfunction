# When a mob is spawned (not entity or player)
execute if entity @s[type=#drakoncore:skeletons,tag=!dc_mob_transformed] if predicate dc_revenant:chance_revenant_spawn run function dc_revenant:summon