tag @s add dc_hunter
execute if entity @s[tag=dc_speedrunner] run function dc_manhunt_compass:roles/remove_speedrunner

function dc_manhunt_compass:roles/prep_title
function #dc_manhunt_compass:become_hunter
execute if entity @s[tag=!dc_introduced] run function dc_manhunt_compass:roles/default_hunter_msg
tag @s remove dc_introduced

playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 0.5 1.5
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon player @s ~ ~ ~ 0.5 2
tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" has chosen to be a ","color":"blue"},{"text":"Hunter","color":"red"}]