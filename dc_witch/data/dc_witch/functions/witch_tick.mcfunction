execute unless score @s dc_witchSpell matches 0 run function dc_witch:spell/on_select
execute if score @s dc_witchCast matches 1.. run function dc_witch:spell/attempt_cast_spell
tp @e[type=husk,tag=dc_outcastFear,limit=1,distance=..50] ^ ^2 ^1