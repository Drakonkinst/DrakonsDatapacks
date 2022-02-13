function dc_symbiote:host/stop
gamerule showDeathMessages false
kill @s
execute if entity @s[type=player] run tellraw @a ["",{"selector":"@s"}," was discarded by ",{"selector":"@a[tag=dc_symbiotePossess,limit=1,sort=nearest]"}]
gamerule showDeathMessages true