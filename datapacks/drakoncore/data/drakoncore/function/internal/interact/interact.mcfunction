tag @n[type=#drakoncore:interact,tag=dc_interactable,distance=..3] add dc_interactTarget
function #drakoncore:interact
tag @e[type=#drakoncore:interact,tag=dc_interactTarget,limit=1] remove dc_interactTarget
scoreboard players set @s dc_interactCd 2