# Heal for one full heart
scoreboard players add #Health dc_value 20
execute store result entity @s Health float 0.1 run scoreboard players get #Health dc_value
playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 0.5 0.75
data modify entity @s InLove set value 0

# Particle that matches Regeneration's hex color, mapped to RGB 0-1
# https://minecraft.fandom.com/wiki/Regeneration
# https://rgbcolorpicker.com/0-1
# Cannot play multiple in a single command, so play it three times
particle minecraft:entity_effect ~ ~ ~ 0.804 0.361 0.671 1 0 normal
particle minecraft:entity_effect ~ ~0.5 ~ 0.804 0.361 0.671 1 0 normal
particle minecraft:entity_effect ~ ~1 ~ 0.804 0.361 0.671 1 0 normal