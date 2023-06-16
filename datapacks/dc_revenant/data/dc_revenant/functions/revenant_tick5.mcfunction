execute store result score #Health dc_value run data get entity @s Health
execute if score #Health dc_value matches 31.. run function dc_revenant:mode/check_switch
execute unless score #Health dc_value matches 31.. if entity @s[tag=!dc_revenantUltimate] run function dc_revenant:mode/any_to_ultimate