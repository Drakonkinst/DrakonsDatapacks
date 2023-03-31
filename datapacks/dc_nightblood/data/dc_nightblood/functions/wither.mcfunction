execute store result score @s dc_value run data get entity @s Health
execute if score @s dc_value matches ..6 run function dc_nightblood:hit/destroy
effect give @s[type=!#drakoncore:undead] minecraft:instant_damage 1 0 true
effect give @s[type=#drakoncore:undead] minecraft:instant_health 1 0 true