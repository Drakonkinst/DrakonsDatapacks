tag @s add dc_filter
execute as @a[tag=dc_filter_anchor,limit=1] if predicate drakoncore:looking_at_target at @s run function drakoncore:players/interact/interact
tag @s remove dc_filter