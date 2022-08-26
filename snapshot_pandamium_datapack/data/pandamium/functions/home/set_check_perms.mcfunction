scoreboard players set <cannot_set> variable 0

# Restrictions
execute if score <cannot_set> variable matches 0 store success score <cannot_set> variable if score @s jailed matches 1.. run tellraw @s [{"text":"[Sethome]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <cannot_set> variable matches 0 store success score <cannot_set> variable if score @s parkour.checkpoint matches 0.. run tellraw @s [{"text":"[Sethome]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]
execute if score <cannot_set> variable matches 0 store success score <cannot_set> variable unless score <home> variable matches 1..10 run tellraw @s [{"text":"[Sethome]","color":"dark_red"},{"text":" That is not a valid home ID! You need to set a number between 1 and 10.","color":"red"}]
execute if score <cannot_set> variable matches 0 store success score <cannot_set> variable if predicate pandamium:in_dimension/staff_world unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Sethome]","color":"dark_red"},{"text":" You cannot set a home in this dimension!","color":"red"}]
execute if score <cannot_set> variable matches 0 store success score <cannot_set> variable if entity @s[predicate=pandamium:in_donator_area] run tellraw @s [{"text":"[Sethome]","color":"dark_red"},{"text":" You cannot set a home here!","color":"red"}]

# Check if can access home
scoreboard players set <can_access_home> variable 0
execute if score <home> variable matches 1 run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 2 if score @s gameplay_perms matches 1.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 3 if score @s gameplay_perms matches 2.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 4 if score @s gameplay_perms matches 3.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 5 if score @s gameplay_perms matches 4.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 6..7 if score @s gameplay_perms matches 5.. run scoreboard players set <can_access_home> variable 1
execute if score <home> variable matches 8..10 if score @s gameplay_perms matches 6.. run scoreboard players set <can_access_home> variable 1
execute if score <cannot_set> variable matches 0 if score <can_access_home> variable matches 0 run tellraw @s [{"text":"[Sethome]","color":"dark_red"},{"text":" You do not have access to that home! You can donate or increase your rank to get access to that home! You can check the ","color":"red"}, {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":" for more information on how to donate!","color":"red"}]

# Run
execute if score <cannot_set> variable matches 0 run function pandamium:home/set_run
