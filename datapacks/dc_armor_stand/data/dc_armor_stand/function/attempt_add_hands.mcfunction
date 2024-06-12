tag @s add dc_handUpgrade
execute as @e[type=armor_stand,limit=1,dx=0,sort=nearest] unless entity @s[nbt={ShowArms:1b}] unless entity @s[nbt={Invisible:1b}] run function dc_armor_stand:add_hands
tag @s remove dc_handUpgrade
tag @s add dc_onGround