execute as @e[type=item,tag=!dc_boatModuleChecked] at @s if predicate drakoncore:on_ground run function dc_boats:modules/check_nearby_boat
execute as @e[type=item_display,tag=dc_boatSail] at @s run function dc_boats:modules/check_sail_drop
#execute as @e[type=#drakoncore:boats,tag=dc_flyingBoat] unless predicate drakoncore:on_ground run function dc_boats:modules/drain_flying_module