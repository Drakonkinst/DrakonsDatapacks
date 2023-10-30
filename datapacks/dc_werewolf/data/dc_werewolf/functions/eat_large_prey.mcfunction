execute if entity @s[tag=dc_werewolfTransformed] run playsound minecraft:entity.generic.eat player @a
execute if entity @s[tag=dc_werewolfTransformed] run effect give @s minecraft:saturation 8 0 true
# 9 * 5 = 45 seconds
scoreboard players add @s dc_werewolfRage 9
function dc_werewolf:meter/display_meter
function dc_werewolf:play_sound_for_stage