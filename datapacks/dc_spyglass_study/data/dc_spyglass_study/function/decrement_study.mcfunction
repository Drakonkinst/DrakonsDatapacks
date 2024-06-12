execute if score @s dc_studyCooldown matches 1.. run scoreboard players remove @s dc_studyCooldown 1
execute if score @s dc_studyCooldown matches ..-1 run scoreboard players add @s dc_studyCooldown 1
execute if score @s dc_studyCooldown matches 0 run function dc_spyglass_study:reset_study_ticks