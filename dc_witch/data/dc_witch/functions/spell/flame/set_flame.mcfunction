setblock ~ ~ ~ fire replace
execute if block ~ ~ ~ fire run function dc_witch:spell/flame/on_success
execute unless block ~ ~ ~ fire at @s run function dc_witch:spell/fail_no_space