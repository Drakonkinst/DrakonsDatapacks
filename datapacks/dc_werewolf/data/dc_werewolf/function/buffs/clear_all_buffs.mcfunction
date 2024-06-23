attribute @s minecraft:generic.attack_damage modifier remove dc_werewolf:strength_1
attribute @s minecraft:generic.armor modifier remove dc_werewolf:armor_1
effect clear @s minecraft:invisibility
tag @s remove dc_werewolfBuff1
function dc_werewolf:meter/display_meter
function dc_werewolf:buffs/clear_stage_2_buffs
function dc_werewolf:buffs/clear_stage_3_buffs