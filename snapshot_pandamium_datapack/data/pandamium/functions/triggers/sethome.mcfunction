scoreboard players set <returned> variable 0

scoreboard players set <do_replace> variable 0
scoreboard players operation <home> variable = @s sethome
execute if score @s sethome matches ..-1 store success score <do_replace> variable run scoreboard players operation <home> variable *= #-1 constant

# Restrictions
execute if score <returned> variable matches 0 if score @s jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <returned> variable matches 0 if score @s parkour.checkpoint matches 0.. store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]

execute if score <returned> variable matches 0 unless score <home> variable matches 1..10 store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid home ID! You must choose a number from 1 to 10.","color":"red"}]
execute if score <returned> variable matches 0 run function pandamium:impl/home/check_gameplay_perms
execute if score <returned> variable matches 0 if score <can_access_home> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," You do not have access to ",[{"text":"Home ","bold":true},{"score":{"name":"<home>","objective":"variable"}}],"! You can become a donator or vote to increase your rank to get access to that home! Check our ", {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}," for more information on how to donate!"]

execute if score <returned> variable matches 0 if predicate pandamium:in_dimension/staff_world unless score @s staff_perms matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot set a home in this dimension!","color":"red"}]
execute if score <returned> variable matches 0 if entity @s[predicate=pandamium:in_donator_area] store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot set a home here!","color":"red"}]

# Run
execute if score <returned> variable matches 0 unless score <do_replace> variable matches 1 run function pandamium:impl/home/check_if_home_exists
execute if score <returned> variable matches 0 unless score <do_replace> variable matches 1 if score <home_exists> variable matches 1 store success score <returned> variable run function pandamium:impl/home/set/ask_to_confirm_replace
execute if score <returned> variable matches 0 run function pandamium:impl/home/set/run

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]

scoreboard players reset @s sethome
scoreboard players enable @s sethome
