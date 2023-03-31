scoreboard players add @s dc_witchCooldown 0
title @s actionbar ["",{"text":"You must wait ","color":"red"},{"score":{"name":"@s","objective":"dc_witchCooldown"},"color":"red"},{"text":"s for your powers to return","color":"red"}]
function dc_witch:spell/on_fail