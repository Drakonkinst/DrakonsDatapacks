execute if dimension minecraft:overworld run scoreboard players set @s dc_lastPortalDim 0
execute if dimension minecraft:the_nether run scoreboard players set @s dc_lastPortalDim -1
execute if dimension minecraft:the_end run scoreboard players set @s dc_lastPortalDim 1
scoreboard players add @a[tag=dc_current_player,limit=1] dc_lastPortalY 2