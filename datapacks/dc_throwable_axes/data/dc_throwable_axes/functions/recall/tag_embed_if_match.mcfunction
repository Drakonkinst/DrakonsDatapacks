execute unless score @s dc_temp_id matches -999999999.. store result score @s dc_temp_id run data get entity @s item.tag.Thrower[0]
execute if score @s dc_temp_id = #AxeThrower dc_temp_id run tag @s add dc_matchingAxe