execute store result score @s dc_temp_id run data get entity @s Item.tag.Thrower[0]
execute if score @s dc_temp_id = #AxeThrower dc_temp_id run tag @s add dc_matchingAxe