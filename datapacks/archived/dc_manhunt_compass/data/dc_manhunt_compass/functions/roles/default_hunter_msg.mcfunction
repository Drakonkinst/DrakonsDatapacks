title @s title {"text":"You are a Hunter.", "color":"red"}
execute unless entity @a[tag=dc_speedrunner,limit=1] run title @s subtitle {"text":"Objective: Kill the Speedrunner","color":"yellow"}
execute if entity @a[tag=dc_speedrunner,limit=1] run title @s subtitle ["",{"text":"Objective: Kill ","color":"yellow"},{"selector":"@a[tag=dc_speedrunner,limit=1]","color":"yellow"}]
title @s actionbar {"text":"Follow the compass to your prey","color":"red","bold":true}