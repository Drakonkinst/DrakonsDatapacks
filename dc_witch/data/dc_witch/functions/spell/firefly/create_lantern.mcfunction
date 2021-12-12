execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ lantern unless entity @e[type=marker,tag=dc_fireflies,limit=1,distance=..5] run summon marker ~ ~ ~ {Tags:["dc_fireflies"]}
function dc_witch:spell/firefly/buff
execute align xyz positioned ~0.5 ~0.2 ~0.5 run function dc_witch:spell/firefly/on_success