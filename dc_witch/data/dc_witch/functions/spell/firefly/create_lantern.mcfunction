execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #dc_witch:lanterns run summon marker ~ ~ ~ {Tags:["dc_fireflies"]}
function dc_witch:spell/firefly/buff
execute align xyz positioned ~0.5 ~0.2 ~0.5 run function dc_witch:spell/firefly/on_success