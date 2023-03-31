# dy=0
function drakoncore:internal/unstuck/check_y

# dy=1
execute unless entity @s[tag=dc_gotUnstuck] positioned ~ ~1 ~ run function drakoncore:internal/unstuck/check_y

# dy=-1
execute unless entity @s[tag=dc_gotUnstuck] positioned ~ ~-1 ~ run function drakoncore:internal/unstuck/check_y

# dy=2
execute unless entity @s[tag=dc_gotUnstuck] positioned ~ ~2 ~ run function drakoncore:internal/unstuck/check_y

# dy=-2
execute unless entity @s[tag=dc_gotUnstuck] positioned ~ ~-2 ~ run function drakoncore:internal/unstuck/check_y