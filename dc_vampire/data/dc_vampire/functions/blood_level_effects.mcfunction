execute if score @s dc_bloodLevel matches 0 run function dc_vampire:hunger_drain

# under_night_sky
execute if predicate drakoncore:in_overworld if predicate drakoncore:under_sky unless predicate dc_vampire:is_day run function dc_vampire:under_night_sky 

#in_dark "how spooky"
execute if predicate dc_vampire:is_dark run function dc_vampire:in_dark