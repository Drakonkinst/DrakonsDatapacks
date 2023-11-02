execute if entity @s[tag=!on_ground,nbt={OnGround:1b}] run function dc_throwable_bombs:smoke/hit_ground
execute if entity @s[tag=dc_bombImpact] run function dc_throwable_bombs:smoke/on_ground