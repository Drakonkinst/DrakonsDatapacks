execute anchored eyes run function dc_xp_storage:check_raycast
execute if block ~ ~0.5 ~0.3 minecraft:ender_chest[facing=north] unless predicate drakoncore:is_sneaking run function dc_xp_storage:withdraw/withdraw
execute if block ~ ~0.5 ~-0.3 minecraft:ender_chest[facing=south] unless predicate drakoncore:is_sneaking run function dc_xp_storage:withdraw/withdraw
execute if block ~0.3 ~0.5 ~ minecraft:ender_chest[facing=west] unless predicate drakoncore:is_sneaking run function dc_xp_storage:withdraw/withdraw
execute if block ~-0.3 ~0.5 ~ minecraft:ender_chest[facing=east] unless predicate drakoncore:is_sneaking run function dc_xp_storage:withdraw/withdraw