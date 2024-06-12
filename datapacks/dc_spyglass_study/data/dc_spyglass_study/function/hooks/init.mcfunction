scoreboard objectives add dc_studyTime dummy "Ticks Studied"

# Used for two separate objectives:
# 1) When positive, automatically reset dc_studyTime for mobs that are partially studied after a delay
# 2) When negative, prevent the mob from being studied again for a certain amount of ticks
scoreboard objectives add dc_studyCooldown dummy "Study Cooldown"