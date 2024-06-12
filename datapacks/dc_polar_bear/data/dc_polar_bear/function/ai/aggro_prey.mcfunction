data modify storage dc_polar_bear:ai TargetUUID set from entity @s UUID
execute store result score #TargetY dc_value run data get entity @s Pos[1]
scoreboard players set #AggroType dc_value 1