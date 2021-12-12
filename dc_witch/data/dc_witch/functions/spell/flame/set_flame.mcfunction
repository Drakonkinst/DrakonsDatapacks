setblock ~ ~ ~ fire replace
execute if block ~ ~ ~ fire at @s anchored eyes positioned ^ ^ ^2 run function dc_witch:spell/flame/on_success
execute unless block ~ ~ ~ fire at @s run function dc_witch:spell/fail_no_space