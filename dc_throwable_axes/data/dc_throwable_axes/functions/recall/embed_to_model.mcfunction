tag @s remove dc_te_model
tag @s remove dc_throwable_model
tag @s add dc_thrownAxe
tag @s add dc_recallAxe

# So axe does not take durability damage during recall
tag @s add creativeThrower

data modify entity @s Rotation set from entity @s Rotation
data modify entity @s Pose set value {Head:[180f,0f,0f],LeftLeg:[180f,0f,0f],RightLeg:[180f,0f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,0f]}
function dc_throwable_axes:add_item_tags