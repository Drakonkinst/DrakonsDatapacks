execute unless data entity @s AngryAt run function dc_polar_bear:ai/search_for_target

#execute store result score #MotionX dc_value run data get entity @s Motion[0] 50
#execute store result score #MotionY dc_value run data get entity @s Motion[0] 50
#execute store result score #MotionZ dc_value run data get entity @s Motion[0] 50

#execute if score #MotionX dc_value matches 0 run say X
#execute if score #MotionY dc_value matches 0 run say Y
#execute if score #MotionZ dc_value matches 0 run say Z

#execute if score #MotionX dc_value matches 0 if score #MotionY dc_value matches 0 if score #MotionZ dc_value matches 0 run say bingo
