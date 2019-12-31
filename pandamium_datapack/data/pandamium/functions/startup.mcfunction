scoreboard objectives add spawn trigger
scoreboard objectives add vote trigger
scoreboard objectives add home trigger
scoreboard objectives add sethome trigger

scoreboard objectives add votes dummy

scoreboard objectives add playtime_ticks minecraft.custom:minecraft.play_one_minute
scoreboard objectives add leave_count minecraft.custom:minecraft.leave_game

scoreboard objectives add home_1_x dummy
scoreboard objectives add home_1_y dummy
scoreboard objectives add home_1_z dummy

scoreboard objectives add home_cooldown dummy

scoreboard objectives add temp_1 dummy
scoreboard objectives add temp_2 dummy
scoreboard objectives add temp_3 dummy

scoreboard players reset * spawn
scoreboard players reset * vote
scoreboard players reset * home
scoreboard players reset * sethome

team add donator
team modify donator prefix [{"text":"Donator","color":"dark_purple"},{"text":" | ","color":"white"}]

team add helper
team modify helper prefix [{"text":"Helper","color":"yellow"},{"text":" | ","color":"white"}]

team add mod
team modify mod prefix [{"text":"Mod","color":"gold"},{"text":" | ","color":"white"}]

team add srmod
team modify srmod prefix [{"text":"Sr. Mod","color":"gold","bold":"true"},{"text":" | ","color":"white","bold":"false"}]

team add owner
team modify owner prefix [{"text":"Owner","color":"dark_red","bold":"true"},{"text":" | ","color":"white","bold":"false"}]


# Schedule the half second tick every time the server restarts or the datapack is reloaded in case it somehow breaks (it shouldn't)
schedule function pandamium:half_second 10t