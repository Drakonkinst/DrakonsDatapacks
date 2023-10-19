difficulty normal
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 65536
gamerule disableElytraMovementCheck true
gamerule doInsomnia false
gamerule mobExplosionDropDecay false
gamerule playersSleepingPercentage 50
gamerule snowAccumulationHeight 8
gamerule forgiveDeadPlayers false
gamerule universalAnger true

gamerule keepInventory false
gamerule mobGriefing true
gamerule doMobSpawning true

scoreboard objectives add dc_torchesPlaced minecraft.used:minecraft.torch "Torches Placed"
scoreboard objectives add dc_tradersKilled minecraft.killed:minecraft.wandering_trader "Traders Slain"

bossbar add dc_worlds_collide:drakon_boss ""
bossbar set dc_worlds_collide:drakon_boss name {"text":"Drakon","bold":true,"color":"dark_purple"}
bossbar set dc_worlds_collide:drakon_boss color purple
bossbar set dc_worlds_collide:drakon_boss max 20
bossbar set dc_worlds_collide:drakon_boss style notched_10
bossbar set dc_worlds_collide:drakon_boss value 20

bossbar add dc_worlds_collide:dishonoredheir_boss ""
bossbar set dc_worlds_collide:dishonoredheir_boss name {"text":"DishonoredHeir","bold":true,"color":"red"}
bossbar set dc_worlds_collide:dishonoredheir_boss color red
bossbar set dc_worlds_collide:dishonoredheir_boss max 20
bossbar set dc_worlds_collide:dishonoredheir_boss style notched_10
bossbar set dc_worlds_collide:dishonoredheir_boss value 20