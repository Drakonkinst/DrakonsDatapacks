tag @s add dc_hunter
execute if entity @s[tag=dc_speedrunner] run function dc_manhunt_compass:roles/remove_speedrunner

function dc_manhunt_compass:roles/prep_title
title @s title {"text":"You are a Hunter.", "color":"red"}
execute unless entity @a[tag=dc_speedrunner,limit=1] run title @s subtitle {"text":"Objective: Kill the Speedrunner","color":"yellow"}
execute if entity @a[tag=dc_speedrunner,limit=1] run title @s subtitle ["",{"text":"Objective: Kill ","color":"yellow"},{"selector":"@a[tag=dc_speedrunner,limit=1]","color":"yellow"}]
title @s actionbar {"text":"Follow the compass to your prey","color":"red","bold":true}
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 0.5 1.5
execute as @a at @s run playsound minecraft:entity.evoker.prepare_summon voice @s ~ ~ ~ 0.5 2
tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" has chosen to be a ","color":"blue"},{"text":"Hunter","color":"red"}]