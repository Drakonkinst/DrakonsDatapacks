execute anchored eyes positioned ^ ^ ^20 unless entity @e[type=item,distance=..20,limit=1] unless entity @e[type=armor_stand,tag=dc_te_model,distance=..20,limit=1] at @s run function dc_witch:spell/fail_no_target
execute anchored eyes positioned ^ ^ ^20 if entity @e[type=item,distance=..20,limit=1] run function dc_witch:spell/summon/teleport_all_nearby
execute unless entity @s[tag=dc_cast_once] anchored eyes positioned ^ ^ ^20 if entity @e[type=armor_stand,tag=dc_te_model,distance=..20,limit=1] run function dc_witch:spell/summon/teleport_all_nearby
tag @s remove dc_cast_once