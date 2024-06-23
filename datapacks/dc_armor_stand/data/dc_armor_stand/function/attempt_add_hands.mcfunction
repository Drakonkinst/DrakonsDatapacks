tag @s add dc_handUpgrade
execute as @n[type=armor_stand,dx=0] unless entity @s[nbt={ShowArms:1b}] unless entity @s[nbt={Invisible:1b}] run function dc_armor_stand:add_hands
tag @s remove dc_handUpgrade
tag @s add dc_onGround