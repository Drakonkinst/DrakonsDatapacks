tag @s add dc_filter
execute at @s as @a[tag=dc_filter_anchor,limit=1] if predicate drakoncore:looking_at_target run function dc_symbiote:display/effects
tag @s remove dc_filter