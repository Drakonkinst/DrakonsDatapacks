execute store result score @s dc_health run data get entity @s Health
execute if score @s[type=!#drakoncore:undead] dc_health matches 13.. run effect give @s instant_damage 1 1 true
execute if score @s[type=#drakoncore:undead] dc_health matches 13.. run effect give @s instant_health 1 1 true
execute if score @s dc_health matches ..12 run function dc_symbiote:possess/violent_kill