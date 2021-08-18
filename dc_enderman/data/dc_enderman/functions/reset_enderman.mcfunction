summon minecraft:enderman ~ ~ ~
function drakoncore:internal/clear_entity
execute as @a[distance=..32] run function dc_enderman:reset_enderman_sound