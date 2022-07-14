tag @e[type=marker,tag=dc_interactable,distance=..2,limit=1,sort=nearest] add dc_interactTarget
function #drakoncore:interact
tag @e[type=marker,tag=dc_interactTarget,limit=1] remove dc_interactTarget
scoreboard players set @s dc_interactCd 3