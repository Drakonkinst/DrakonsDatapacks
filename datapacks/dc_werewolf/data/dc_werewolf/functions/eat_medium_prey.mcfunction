execute if entity @s[tag=dc_werewolfTransformed] run playsound minecraft:entity.generic.eat player @a
execute if entity @s[tag=dc_werewolfTransformed] run effect give @s minecraft:saturation 4 0 true
# 6 * 5 = 30 seconds
scoreboard players add @s dc_werewolfRage 6
function dc_werewolf:meter/display_meter
function dc_werewolf:play_sound_for_stage