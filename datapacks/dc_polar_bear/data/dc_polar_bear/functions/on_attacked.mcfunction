#say I was attacked!
#execute store result score #AngerTime dc_value run data get entity @s AngerTime
#execute store success score #AngryAt dc_value if data entity @s AngryAt
#tellraw @a [{"score":{"name":"#AngerTime","objective":"dc_value"},"color":"red"},{"text":" ","color":"red"},{"score":{"name":"#AngryAt","objective":"dc_value","color":"red"}}]

# To reduce the chance to stunlocking it, completely refresh dash cooldown
execute if score @s dc_polarBearLunge matches 1..149 run scoreboard players remove @s dc_polarBearLunge 150

# Cancel current food eating - the polar bear does not get this back
scoreboard players reset @s dc_polarBearEat