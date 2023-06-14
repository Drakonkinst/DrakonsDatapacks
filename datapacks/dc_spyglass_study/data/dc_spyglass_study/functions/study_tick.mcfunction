execute if score @s dc_studyTime matches 1.. run effect give @s glowing 1 0 true
function dc_spyglass_study:progressbar/display_bar
scoreboard players set @s dc_studyCooldown 2
execute if score @s dc_studyTime matches 10.. run function dc_spyglass_study:finish_study

# Increment study time
execute store result score #IsFast dc_value if entity @s[type=#dc_spyglass_study:fast_study]
execute if score #IsFast dc_value matches 1 run scoreboard players add @s dc_studyTime 2
execute unless score #IsFast dc_value matches 1 run scoreboard players add @s dc_studyTime 1