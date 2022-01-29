execute if score @s dc_nbUse matches ..39 run scoreboard players add @s dc_nbUse 1
scoreboard players operation #NightbloodToDrain dc_value = @s dc_nbUse
function dc_nightblood:unsheathed/drain_loop