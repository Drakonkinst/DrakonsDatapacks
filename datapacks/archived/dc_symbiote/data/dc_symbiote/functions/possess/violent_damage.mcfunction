execute store result score @s dc_health run data get entity @s Health
damage @s 12 minecraft:magic by @a[tag=dc_symbiotePossess,limit=1,sort=nearest]
execute if data entity @s AngerTime run function dc_symbiote:possess/make_angry
execute if score @s dc_health matches ..12 run function dc_symbiote:possess/violent_kill