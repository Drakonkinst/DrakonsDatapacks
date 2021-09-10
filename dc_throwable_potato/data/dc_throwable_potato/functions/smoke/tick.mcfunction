execute if entity @s[tag=!on_ground,nbt={OnGround:1b}] run function dc_throwable_potato:smoke/hit_ground
execute if entity @s[tag=on_ground] run function dc_throwable_potato:smoke/on_ground