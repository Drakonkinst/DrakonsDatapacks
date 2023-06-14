# This distance should match the one in the advancement
tag @e[type=#drakoncore:vanilla/all_mobs,distance=..128] add dc_entityLook.candidate
function drakoncore:api/entity_look
tag @s add dc_spyglassAnchor
# TODO: Make sure mobs that should be invisible cannot be studied
execute as @e[tag=dc_entityLook.result,limit=1,distance=..128] unless score @s dc_studyCooldown matches ..-1 run function dc_spyglass_study:study_tick 
tag @s remove dc_spyglassAnchor
tag @e[type=#drakoncore:vanilla/all_mobs,distance=..128] remove dc_entityLook.candidate

# We'd usually revoke the advancement here, but instead we rate limit how often
# the advancement can trigger by moving that to another ticking function instead
#advancement revoke @s only dc_spyglass_study:look_at_mob