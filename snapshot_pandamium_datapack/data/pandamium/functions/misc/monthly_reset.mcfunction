# Gets run at the begining of every month

scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_votes

scoreboard players reset <enderman_farm_x> global
scoreboard players reset <enderman_farm_y> global
scoreboard players reset <enderman_farm_z> global

tellraw @a [{"text":"[Info]","color":"blue"},{"text":" The monthly leaderboards and enderman farm coordinates have been reset!","color":"green"}]
