tag @s remove dc_symbioteHost
data remove entity @s[type=!player,tag=!dc_symbiotePersistent] PersistenceRequired
tag @s remove dc_symbiotePersistent
execute if entity @a[tag=dc_symbiotePossess,limit=1,sort=nearest] run tellraw @s[type=player] ["",{"selector":"@a[tag=dc_symbiotePossess,limit=1,sort=nearest]","color":"dark_green"},{"text":" stopped possessing you!","color":"dark_green"}]
tag @s remove dc_currentHost