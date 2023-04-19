# Runs once per second on each entity
execute if entity @s[type=item,tag=!dc_boatModuleChecked] if predicate drakoncore:on_ground run function dc_boats:modules/check_nearby_boat