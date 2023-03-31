# Called from interacting player
# @e[type=#drakoncore:interact,tag=dc_interactTarget,limit=1] refers to interact target

execute if entity @e[type=#drakoncore:interact,tag=dc_interactTarget,tag=dc_rocketTerminal,limit=1] run function dc_rocket_travel:terminal/on_interact