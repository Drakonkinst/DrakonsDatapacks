tag @s add dc_activeBoat

scoreboard players reset #NumSails dc_value
#scoreboard players reset #CanFly dc_value

function dc_boats:controls/check_modules

execute if score #NumSails dc_value matches 1.. run playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.5 1
#execute if score #CanFly dc_value matches 1.. if entity @s[tag=!dc_flyingBoat] run function dc_boats:controls/init_fly
#execute unless score #CanFly dc_value matches 1.. if entity @s[tag=dc_flyingBoat] run function dc_boats:controls/deinit_fly
scoreboard players operation @s dc_numSails = #NumSails dc_value
function dc_boats:controls/on_activate_module