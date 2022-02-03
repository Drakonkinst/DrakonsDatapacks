execute if predicate drakoncore:in_overworld run scoreboard players set @s dc_lastPortalDim 0
execute if predicate drakoncore:in_nether run scoreboard players set @s dc_lastPortalDim -1
execute if predicate drakoncore:in_end run scoreboard players set @s dc_lastPortalDim 1
scoreboard players add @a[tag=dc_current_player,limit=1] dc_lastPortalY 2