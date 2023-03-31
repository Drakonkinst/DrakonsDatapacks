function dc_tool_embed:embed
execute as @e[type=armor_stand,limit=1,tag=dc_te_model,tag=new] at @s run tp ~ ~0.05 ~
data modify entity @e[type=armor_stand,limit=1,tag=dc_te_model,tag=new] Pose.RightArm set value [35f,0f,0f]
function dc_tool_embed:finish_embed