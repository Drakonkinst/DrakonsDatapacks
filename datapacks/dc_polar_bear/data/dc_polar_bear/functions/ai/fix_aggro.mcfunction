#say Attempting to fix

#function dc_polar_bear:ai/search_for_target

#execute store result score #AngerTime dc_value run data get entity @s AngerTime
#execute store success score #AngryAt dc_value if data entity @s AngryAt
#tellraw @a [{"score":{"name":"#AngerTime","objective":"dc_value"},"color":"blue"},{"text":" ","color":"blue"},{"score":{"name":"#AngryAt","objective":"dc_value"},"color":"blue"}]