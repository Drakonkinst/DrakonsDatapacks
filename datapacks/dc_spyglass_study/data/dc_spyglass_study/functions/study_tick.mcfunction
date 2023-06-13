effect give @s glowing 1 0 true
function dc_spyglass_study:progressbar/display_bar
execute if score @s dc_studyTime matches 10.. run function dc_spyglass_study:finish_study
scoreboard players add @s dc_studyTime 1
scoreboard players set @s dc_studyCooldown 2
tag @s remove dc_entityLook.result