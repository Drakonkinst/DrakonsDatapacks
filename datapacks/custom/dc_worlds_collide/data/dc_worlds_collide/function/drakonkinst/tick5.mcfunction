execute if entity @s[gamemode=spectator,tag=!dc_drakonSpectate,tag=dc_enderman] run function dc_worlds_collide:drakonkinst/tp_out
execute if entity @s[gamemode=!spectator,tag=dc_drakonSpectate,tag=dc_enderman] run function dc_worlds_collide:drakonkinst/tp_in
execute if entity @s[tag=dc_boss] run function dc_worlds_collide:drakonkinst/boss/update