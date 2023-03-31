tag @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] remove dc_editing
execute unless entity @e[type=marker,tag=dc_rocketLocation,limit=1] run tellraw @s {"text":"No locations found!","color":"red"}
tag @e[type=marker,tag=dc_rocketLocation,limit=1,sort=nearest] add dc_editing
execute if entity @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] run tellraw @s ["",{"text":"Now editing ","color":"green"},{"selector":"@e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1,sort=nearest]","color":"green"}]

# Usage guide
tellraw @s {"text":"Please run the following commands to set this location up. Make sure it is within the world spawn chunks.","color":"green"}
tellraw @s {"text":"Set Name","color":"aqua","clickEvent":{"action":"suggest_command","value":"/data modify entity @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] CustomName set value \"\\\"\\\"\""}}
tellraw @s {"text":"Set Id","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] dc_rocketId "}}
tellraw @s {"text":"Set X","color":"aqua","clickEvent":{"action":"suggest_command","value":"/data modify entity @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] data.X set value "}}
tellraw @s {"text":"Set Z","color":"aqua","clickEvent":{"action":"suggest_command","value":"/data modify entity @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] data.Z set value "}}
tellraw @s {"text":"Set Location HERE","color":"aqua","clickEvent":{"action":"run_command","value":"/function dc_rocket_travel:trigger/set_location"}}
tellraw @s {"text":"FINISH","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/tag @e[type=marker,tag=dc_rocketLocation,tag=dc_editing,limit=1] remove dc_editing"}}