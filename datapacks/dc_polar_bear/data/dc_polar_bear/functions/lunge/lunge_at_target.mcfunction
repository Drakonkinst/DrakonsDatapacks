execute store result score #OldX dc_value run data get entity @s Pos[0] 50
execute store result score #OldY dc_value run data get entity @s Pos[1] 50
execute store result score #OldZ dc_value run data get entity @s Pos[2] 50

# Get direction vector
execute facing entity @e[tag=dc_polarBearTarget,limit=1,distance=..16] feet run tp ^ ^ ^1
execute store result score #X dc_value run data get entity @s Pos[0] 50
execute store result score #Y dc_value run data get entity @s Pos[1] 50
execute store result score #Z dc_value run data get entity @s Pos[2] 50
execute facing entity @e[tag=dc_polarBearTarget,limit=1,distance=..16] feet run tp ^ ^ ^-1

# Face target
execute facing entity @e[tag=dc_polarBearTarget,limit=1,distance=..16] feet run tp @s ~ ~ ~ ~ ~

scoreboard players operation #X dc_value -= #OldX dc_value
scoreboard players operation #Y dc_value -= #OldY dc_value
scoreboard players operation #Z dc_value -= #OldZ dc_value

execute if score #Y dc_value matches ..-10 positioned ~ ~-1 ~ run function dc_polar_bear:icebreaker
execute if block ~ ~ ~ water if score #Y dc_value matches ..-10 run scoreboard players remove #Y dc_value 20
execute if block ~ ~ ~ water if score #Y dc_value matches 10.. run scoreboard players add #Y dc_value 15
execute unless block ~ ~ ~ water if score #Y dc_value matches ..-21 run scoreboard players set #Y dc_value -20
execute unless block ~ ~ ~ water if score #Y dc_value matches 21.. run scoreboard players set #Y dc_value 20

playsound minecraft:entity.polar_bear.warning hostile @a ~ ~ ~ 1 2

# Set to cooldown in ticks (150) plus duration of lunge in ticks (20)
scoreboard players set @s dc_polarBearLunge 170

#tellraw @a [{"text": "X: "},{"score":{"name":"#X","objective":"dc_value"}}]
#tellraw @a [{"text": "Y: "},{"score":{"name":"#Y","objective":"dc_value"}}]
#tellraw @a [{"text": "Z: "},{"score":{"name":"#Z","objective":"dc_value"}}]
execute store result entity @s Motion[0] double 0.02 run scoreboard players get #X dc_value
execute store result entity @s Motion[1] double 0.02 run scoreboard players get #Y dc_value
execute store result entity @s Motion[2] double 0.02 run scoreboard players get #Z dc_value