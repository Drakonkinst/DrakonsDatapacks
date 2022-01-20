tag @s add dc_umbrellaAnchor
execute as @a[distance=..20] run function dc_umbrella:mark_matching_player
execute unless entity @a[tag=dc_umbrellaMatchP,limit=1] run kill @s
tag @s remove dc_umbrellaAnchor
tag @a remove dc_umbrellaMatchP