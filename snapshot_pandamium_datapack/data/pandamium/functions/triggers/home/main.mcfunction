scoreboard players set <returned> variable 0

scoreboard players operation <home> variable = @s home

# Restrictions
execute if score <returned> variable matches 0 if score @s jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <returned> variable matches 0 if score @s parkour.checkpoint matches 0.. store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]

execute if score <returned> variable matches 0 unless score <home> variable matches 1..10 store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid home ID! You must choose a number from 1 to 10.","color":"red"}]
execute if score <returned> variable matches 0 run function pandamium:impl/home/check_gameplay_perms
execute if score <returned> variable matches 0 if score <can_access_home> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," You do not have access to ",[{"text":"Home ","bold":true},{"score":{"name":"<home>","objective":"variable"}}],"! You can become a donator or vote to increase your rank to get access to that home! Check our ", {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}," for more information on how to donate!"]

# Run
execute if score <returned> variable matches 0 run function pandamium:impl/home/check_if_home_exists
execute if score <returned> variable matches 0 if score <home_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Homes] ","color":"dark_red"},[{"text":"Home ","color":"red","bold":true},{"score":{"name":"<home>","objective":"variable"}}],{"text":" has not been set!","color":"red"}]
execute if score <returned> variable matches 0 run function pandamium:impl/home/go/run

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]

scoreboard players reset @s home
scoreboard players enable @s home
