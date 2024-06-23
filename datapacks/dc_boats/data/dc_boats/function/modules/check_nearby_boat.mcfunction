execute as @e[type=#drakoncore:boats,distance=..2] run function dc_boats:modules/count_passengers
tag @n[type=#drakoncore:boats,distance=..2,scores={dc_value=1..}] add dc_targetBoat
execute if entity @e[type=#drakoncore:boats,distance=..2,limit=1,tag=dc_targetBoat] run function dc_boats:modules/check_module_item
tag @s add dc_boatModuleChecked