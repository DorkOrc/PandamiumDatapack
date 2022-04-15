# Gets run at the begining of every month

tellraw @a [{"text":"[Info]","color":"blue"},{"text":" The monthly leaderboards have been reset!","color":"green"}]
scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_votes
