playsound minecraft:block.note_block.harp master @s ~ ~ ~ .3 2
scoreboard players operation @s dc_rocketId = @e[type=#drakoncore:interact,tag=dc_interactTarget,limit=1] dc_rocketId

tellraw @s ["",{"text":"\n====== ","color":"gold"},{"text":"Launchpad Terminal","color":"dark_aqua","bold":true},{"text":" ======","color":"gold","bold":false}]
tellraw @s ["",{"text":" Choose your destination:","color":"blue"}]
function #dc_rocket_travel:list_locations
tellraw @s ""

scoreboard players enable @s dc_rocketSelect