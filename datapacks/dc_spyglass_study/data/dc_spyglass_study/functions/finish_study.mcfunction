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
execute if score #Age dc_value matches ..-1 run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Baby","color":"gray","italic":true}]
execute if data entity @s {IsBaby:1b} run tellraw @a[tag=dc_spyglassAnchor,limit=1] ["  ",{"text":"Baby","color":"gray","italic":true}]

# Mob-specific
execute if entity @s[type=#drakoncore:horses] run function dc_spyglass_study:info/horse_type
execute if entity @s[type=#drakoncore:llamas] run function dc_spyglass_study:info/llama_type
execute if entity @s[type=#drakoncore:bucketable] run function dc_spyglass_study:info/bucketable
execute if entity @s[type=#dc_spyglass_study:villager_type] run function dc_spyglass_study:info/villager_type
execute if entity @s[type=allay] run function dc_spyglass_study:info/allay
execute if entity @s[type=axolotl] run function dc_spyglass_study:info/axolotl
execute if entity @s[type=bat] run function dc_spyglass_study:info/bat
execute if entity @s[type=camel] run function dc_spyglass_study:info/camel
execute if entity @s[type=cat] run function dc_spyglass_study:info/cat
execute if entity @s[type=fox] run function dc_spyglass_study:info/fox
execute if entity @s[type=frog] run function dc_spyglass_study:info/frog
execute if entity @s[type=goat] run function dc_spyglass_study:info/goat
execute if entity @s[type=horse] run function dc_spyglass_study:info/horse
execute if entity @s[type=iron_golem] run function dc_spyglass_study:info/iron_golem
execute if entity @s[type=mooshroom] run function dc_spyglass_study:info/mooshroom
execute if entity @s[type=ocelot] run function dc_spyglass_study:info/ocelot
execute if entity @s[type=panda] run function dc_spyglass_study:info/panda
execute if entity @s[type=parrot] run function dc_spyglass_study:info/parrot
execute if entity @s[type=rabbit] run function dc_spyglass_study:info/rabbit
execute if entity @s[type=tropical_fish] run function dc_spyglass_study:info/tropical_fish
execute if entity @s[type=turtle] run function dc_spyglass_study:info/turtle
execute if entity @s[type=villager] run function dc_spyglass_study:info/villager
execute if entity @s[type=wolf] run function dc_spyglass_study:info/wolf

# Allow other datapacks to hook in here
function #dc_spyglass_study:on_finish_study

tellraw @a[tag=dc_spyglassAnchor] ""

# Clear action bar
title @a[tag=dc_spyglassAnchor,limit=1] actionbar ""

execute as @a[tag=dc_spyglassAnchor,limit=1] at @s run function dc_spyglass_study:finish_study_effects

# Prevent mob from being studied for another 5 seconds
scoreboard players set @s dc_studyCooldown -5
scoreboard players reset @s dc_studyTime