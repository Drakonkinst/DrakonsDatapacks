tag @s add dc_activeBoat
scoreboard players reset #NumSails dc_value
execute on passengers run function dc_boats:controls/check_modules
execute if score #NumSails dc_value matches 1.. run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.5 1
scoreboard players operation @s dc_numSails = #NumSails dc_value
function dc_boats:controls/on_activate_module