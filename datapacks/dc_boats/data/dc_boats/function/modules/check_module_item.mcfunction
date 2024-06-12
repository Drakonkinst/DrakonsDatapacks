data modify storage dc_boats:item Item set from entity @s Item
data remove storage dc_boats:item ModuleType
execute as @e[type=minecraft:armor_stand,x=-1,y=-129,z=-1,dx=1,dy=1,dz=1,tag=dc_utility,limit=1] run function dc_boats:modules/check_item
execute if data storage dc_boats:item {ModuleType:"Sail"} run function dc_boats:modules/install_sail
tag @e[type=#drakoncore:boats,distance=..2,limit=1,tag=dc_targetBoat] remove dc_targetBoat