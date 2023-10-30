execute if entity @s[tag=dc_werewolfTransformed] run playsound minecraft:entity.generic.eat player @a
execute if entity @s[tag=dc_werewolfTransformed] run effect give @s minecraft:saturation 2 0 true
# 2 * 5 = 10 seconds
scoreboard players add @s dc_werewolfRage 2
function dc_werewolf:meter/display_meter
function dc_werewolf:play_sound_for_stage