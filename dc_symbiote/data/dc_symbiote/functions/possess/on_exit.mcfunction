execute if score @s dc_symbiotePossess matches ..12 run function dc_symbiote:possess/on_violent_exit
execute unless score @s dc_symbiotePossess matches ..12 run function dc_symbiote:possess/on_peaceful_exit
function dc_symbiote:possess/exit