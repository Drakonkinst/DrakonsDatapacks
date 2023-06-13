tellraw @a[tag=dc_spyglassAnchor] ""

# Entity name
tellraw @a[tag=dc_spyglassAnchor,limit=1] {"selector":"@s","bold":true}

# Health
# No easy way to get max health, so this will have to do
execute store result score #Health dc_value run data get entity @s Health
scoreboard players operation #HealthRemainder dc_value = #Health dc_value
scoreboard players operation #HealthRemainder dc_value %= #2 dc_value
scoreboard players operation #Health dc_value /= #2 dc_value
# {"text":" × ","color":"red"}
execute if score #HealthRemainder dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"score":{"name":"#Health","objective":"dc_value"},"color":"red"},{"text":".5 ","color":"red"},{"text":"❤","color":"#F61111"}]
execute unless score #HealthRemainder dc_value matches 1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"score":{"name":"#Health","objective":"dc_value"},"color":"red"},{"text":" ","color":"red"},{"text":"❤","color":"#F61111"}]

execute store result score #Age dc_value run data get entity @s Age
execute if score #Age dc_value matches ..-1 run tellraw @a[tag=dc_spyglassAnchor] ["  ",{"text":"Baby","color":"gray","italic":true}]
execute if data entity @s {IsBaby:1b} run tellraw @a[tag=dc_spyglassAnchor] ["  ",{"text":"Baby","color":"gray","italic":true}]

# Mob-specific
execute if entity @s[type=#drakoncore:horses] run function dc_spyglass_study:info/horse_type
execute if entity @s[type=frog] run function dc_spyglass_study:info/frog
execute if entity @s[type=mooshroom] run function dc_spyglass_study:info/mooshroom
execute if entity @s[type=horse] run function dc_spyglass_study:info/horse

# Allow other datapacks to hook in here
function #dc_spyglass_study:on_finish_study

tellraw @a[tag=dc_spyglassAnchor] ""

# Clear action bar
title @a[tag=dc_spyglassAnchor,limit=1] actionbar ""

execute as @a[tag=dc_spyglassAnchor,limit=1] at @s run function dc_spyglass_study:finish_study_effects

# Prevent mob from being studied for another 5 seconds
scoreboard players set @s dc_studyCooldown -5
scoreboard players reset @s dc_studyTime