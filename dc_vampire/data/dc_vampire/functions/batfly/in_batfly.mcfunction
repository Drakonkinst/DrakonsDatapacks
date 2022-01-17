# Force player not to spectate anything
spectate

execute store result score @s dc_temp_id run data get entity @s UUID[0]
tag @s add dc_batflyAnchor
execute as @e[type=bat,tag=dc_batfly] run function dc_vampire:batfly/tag_matching_batfly
tag @s remove dc_batflyAnchor
execute unless entity @e[type=bat,tag=dc_matchBatfly,limit=1] run function dc_vampire:batfly/leave_batfly
#execute unless entity @e[type=bat,tag=dc_matchBatfly,limit=1] run say No matching bat found
tag @e[type=bat,tag=dc_batfly] remove dc_matchBatfly