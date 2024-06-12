setblock ~ ~ ~ fire replace
execute if block ~ ~ ~ #dc_witch:fire_result run function dc_witch:spell/flame/on_success
execute unless block ~ ~ ~ #dc_witch:fire_result at @s run function dc_witch:spell/fail_no_space