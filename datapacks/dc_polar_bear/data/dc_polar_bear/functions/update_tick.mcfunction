
execute if score @s dc_polarBearLunge matches 150.. run function dc_polar_bear:lunge/lunge_tick
execute if score @s dc_polarBearLunge matches 1.. run scoreboard players remove @s dc_polarBearLunge 1


#execute store result score #AngerTime dc_value run data get entity @s AngerTime
#execute store success score #AngryAt dc_value if data entity @s AngryAt
#tellraw @a [{"score":{"name":"#AngerTime","objective":"dc_value"}},{"text":" "},{"score":{"name":"#AngryAt","objective":"dc_value"}}]


