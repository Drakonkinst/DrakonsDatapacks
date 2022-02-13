tag @s add dc_symbioteHost
tag @s add dc_newHost
tag @s remove dc_symbioteTarget
execute if predicate dc_symbiote:is_persistent run tag @s add dc_symbiotePersistent
data modify entity @s[type=!player] PersistenceRequired set value 1b
tellraw @s[type=player] ["",{"selector":"@a[tag=dc_symbiotePossess,limit=1,sort=nearest]","color":"dark_green"},{"text":" is now possessing you!","color":"dark_green"}]