tag @s add dc_filter
execute as @a[tag=dc_filter_anchor,tag=!dc_success,limit=1] if predicate drakoncore:looking_at_target run function dc_witch:spell/levitate/on_success
tag @s remove dc_filter