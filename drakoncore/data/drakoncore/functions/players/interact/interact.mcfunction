tag @e[type=#drakoncore:interact,tag=dc_interactable,limit=1,distance=..3,sort=nearest] add dc_interactTarget
function #drakoncore:interact
tag @e[type=#drakoncore:interact,tag=dc_interactTarget,limit=1] remove dc_interactTarget
scoreboard players set @s dc_interactCd 2