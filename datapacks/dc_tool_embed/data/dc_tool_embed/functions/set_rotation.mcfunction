# Runs on Utility Armor Stand

# Rotation is primarily done with the right_rotation field
# I used this calculator to go between Euler's and Quaternions: https://quaternions.online/
# Remember Minecraft's format is [x, y, z, w] and the tool's format is [w, x, y, z]
execute if predicate dc_tool_embed:holding_axe run data modify storage dc_tool_embed:item_data ItemTransform set value {scale:[0.8f,0.8f,0.8f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[-0.701f, 0.092f, -0.701f, 0.092f],translation:[0.0f,0.18f,0.0f]}
execute if predicate dc_tool_embed:holding_pickaxe run data modify storage dc_tool_embed:item_data ItemTransform set value {scale:[0.8f,0.8f,0.8f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[-0.690f, 0.153f, -0.690f, 0.153f],translation:[0.0f,0.15f,0.0f]}
execute if predicate dc_tool_embed:holding_sword run data modify storage dc_tool_embed:item_data ItemTransform set value {scale:[0.8f,0.8f,0.8f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.674f, 0.213f, 0.674f, 0.213f],translation:[0.0f,0.19f,0.0f]}
execute if predicate dc_tool_embed:holding_shovel run data modify storage dc_tool_embed:item_data ItemTransform set value {scale:[0.8f,0.8f,0.8f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.674f, 0.213f, 0.674f, 0.213f],translation:[0.0f,0.19f,0.0f]}
execute if predicate dc_tool_embed:holding_hoe run data modify storage dc_tool_embed:item_data ItemTransform set value {scale:[0.8f,0.8f,0.8f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[-0.690f, 0.153f, -0.690f, 0.153f],translation:[0.0f,0.2f,0.0f]}