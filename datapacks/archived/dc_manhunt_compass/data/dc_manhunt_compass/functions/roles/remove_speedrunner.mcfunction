tellraw @s {"text":"You are no longer the Speedrunner.","color":"red"}
kill @e[type=armor_stand,tag=dc_manhunt_anchor]
tag @s remove dc_speedrunner
function #dc_manhunt_compass:remove_speedrunner