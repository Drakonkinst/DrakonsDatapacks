gamemode survival @s[tag=dc_possess0]
gamemode creative @s[tag=dc_possess1]
gamemode adventure @s[tag=dc_possess2]
tag @s remove dc_possess0
tag @s remove dc_possess1
tag @s remove dc_possess2
tag @s remove dc_symbioteMoving
execute align xyz run tp @s ~0.5 ~ ~0.5
function drakoncore:api/unstuck