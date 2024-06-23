execute at @s positioned ~-5 ~-5 ~-5 as @n[nbt={HurtTime:10s},dx=10,dy=10,dz=10] at @s run function dc_nightblood:hit/destroy
execute at @s if predicate dc_nightblood:chance_talk_active run function dc_nightblood:talk/active
advancement revoke @s only dc_nightblood:nightblood_hit