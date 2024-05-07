tag @s add dc_is_self
execute as @a[tag=dc_speedrunner,tag=!dc_is_self] run function dc_manhunt_compass:roles/remove_speedrunner
tag @s add dc_speedrunner
execute if entity @s[tag=dc_hunter] run function dc_manhunt_compass:roles/remove_hunter
tag @s remove dc_is_self

function dc_manhunt_compass:summon_anchor

function dc_manhunt_compass:roles/prep_title
function #dc_manhunt_compass:become_speedrunner
execute if entity @s[tag=!dc_introduced] run function dc_manhunt_compass:roles/default_speedrunner_msg
tag @s remove dc_introduced

playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 0.2 1.5
execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.5 0
tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" has chosen to be the ","color":"blue"},{"text":"Speedrunner","color":"green"}]