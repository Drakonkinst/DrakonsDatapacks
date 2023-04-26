# Get distance from Polar Bear to prey below it
execute store result score #Y dc_value run data get entity @s Pos[1]
scoreboard players operation #Y dc_value -= #TargetY dc_value

# If target is too far, give up
execute if score #Y dc_value matches 6.. run scoreboard players reset #AggroType dc_value