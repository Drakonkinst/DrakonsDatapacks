execute if score @s dc_bloodLevel matches ..0 run title @s actionbar ["",{"text":"⏺","color":"dark_gray","bold":true},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"dc_value"},"color":"gold"},{"text":"% (Critical)","color":"gold"}]
execute if score @s dc_bloodLevel matches 1..120 run title @s actionbar ["",{"text":"⏺","color":"dark_gray","bold":true},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"dc_value"},"color":"dark_red"},{"text":"% (Hungry)","color":"dark_red"}]
execute if score @s dc_bloodLevel matches 121..360 run title @s actionbar ["",{"text":"⏺","color":"dark_gray","bold":true},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"dc_value"},"color":"red"},{"text":"% (Content)","color":"red"}]
execute if score @s dc_bloodLevel matches 361..600 run title @s actionbar ["",{"text":"⏺","color":"dark_gray","bold":true},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"dc_value"},"color":"light_purple"},{"text":"% (Sated)","color":"light_purple"}]
execute if score @s dc_bloodLevel matches 601.. run title @s actionbar ["",{"text":"⏺","color":"dark_gray","bold":true},{"text":" | ","color":"gray"},{"score":{"name":"@s","objective":"dc_value"},"color":"dark_purple"},{"text":"% (Overflowing)","color":"dark_purple"}]