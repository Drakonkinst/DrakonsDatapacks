function dc_symbiote:weakness_to_fire
function dc_symbiote:possess/on_peaceful_exit
damage @s 6 minecraft:in_fire
playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 1 0.5
tag @s remove dc_symbioteFire