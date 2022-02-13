tag @s add dc_filter
execute as @a[tag=dc_filter_anchor,limit=1] if predicate drakoncore:looking_at_target run function dc_symbiote:possess/success_attempt
tag @s remove dc_filter