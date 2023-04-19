tag @s add dc_activeBoat
execute if score #NumSails dc_value matches 1.. run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.5 1
function dc_boats:controls/on_activate_module