data remove storage dc_polar_bear:ai TargetUUID
function dc_polar_bear:ai/reset_target
execute unless data storage dc_polar_bear:ai TargetUUID as @e[type=#dc_polar_bear:aggro_near,distance=..8,sort=nearest,limit=1] run data modify storage dc_polar_bear:ai TargetUUID set from entity @s UUID
execute unless data storage dc_polar_bear:ai TargetUUID as @e[type=#dc_polar_bear:aggro_far,distance=..16,sort=nearest,limit=1] run data modify storage dc_polar_bear:ai TargetUUID set from entity @s UUID

execute if data storage dc_polar_bear:ai TargetUUID run data modify entity @s AngryAt set from storage dc_polar_bear:ai TargetUUID
execute if data storage dc_polar_bear:ai TargetUUID run data modify entity @s AngerTime set value 40
