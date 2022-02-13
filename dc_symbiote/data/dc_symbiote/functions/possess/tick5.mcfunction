scoreboard players add @s dc_symbiotePossess 1

execute if score @s dc_symbiotePossess matches ..13 run function dc_symbiote:display/meter
execute if score @s dc_symbiotePossess matches ..4 run function dc_symbiote:possess/spectate_buffer
execute unless score @s dc_symbiotePossess matches ..4 run function dc_symbiote:possess/check_exit