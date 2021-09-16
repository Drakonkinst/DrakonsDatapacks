tag @s add is_self
execute as @a[tag=dc_speedrunner,tag=!is_self] run function dc_manhunt_compass:roles/remove_speedrunner
tag @s add dc_speedrunner
execute if entity @s[tag=dc_hunter] run function dc_manhunt_compass:roles/remove_hunter
tag @s remove is_self

function dc_manhunt_compass:summon_anchor

function dc_manhunt_compass:roles/prep_title
title @s title {"text":"You are the Speedrunner.","color":"green"}
title @s subtitle {"text":"Objective: Defeat the Ender Dragon","color":"yellow"}
title @s actionbar {"text":"If you die once, you lose","color":"red","bold":true}
playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 0.2 1.5
execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.5 0
tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" has chosen to be the ","color":"blue"},{"text":"Speedrunner","color":"green"}]

function #dc_manhunt_compass:become_speedrunner