# Get distance from Polar Bear to prey below it
execute store result score #TargetY dc_value run data get entity @e[tag=dc_polarBearTarget,limit=1] Pos[1]
execute store result score #Y dc_value run data get entity @s Pos[1]
scoreboard players operation #Y dc_value -= #TargetY dc_value

#tellraw @a [{"score":{"name":"#Y","objective":"dc_value"}},{"text":" "},{"score":{"name":"#TargetY","objective":"dc_value"}}]

# If target is too far, give up
# We're a bit more lenient here (10 instead of 8) in case it's a fluke and
# the target gets back into range
execute if score #Y dc_value matches 10.. run function dc_polar_bear:ai/stop_targeting
execute if score #Y dc_value matches 10.. run scoreboard players reset #HasTarget dc_value