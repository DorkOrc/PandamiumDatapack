scoreboard players set <cannot_go> variable 0

# Restrictions
execute if score <cannot_go> variable matches 0 store success score <cannot_go> variable if score @s jailed matches 1.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <cannot_go> variable matches 0 store success score <cannot_go> variable if score @s parkour.checkpoint matches 0.. run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]
execute if score <cannot_go> variable matches 0 store success score <cannot_go> variable unless score @s home matches 1..10 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" That is not a valid home ID! You need to enter a number between 1 and 10.","color":"red"}]

# Check if can access home
scoreboard players set <can_access_home> variable 0
execute if score @s home matches 1 run scoreboard players set <can_access_home> variable 1
execute if score @s home matches 2 if score @s gameplay_perms matches 1.. run scoreboard players set <can_access_home> variable 1
execute if score @s home matches 3 if score @s gameplay_perms matches 2.. run scoreboard players set <can_access_home> variable 1
execute if score @s home matches 4 if score @s gameplay_perms matches 3.. run scoreboard players set <can_access_home> variable 1
execute if score @s home matches 5 if score @s gameplay_perms matches 4.. run scoreboard players set <can_access_home> variable 1
execute if score @s home matches 6..7 if score @s gameplay_perms matches 5.. run scoreboard players set <can_access_home> variable 1
execute if score @s home matches 8..10 if score @s gameplay_perms matches 6.. run scoreboard players set <can_access_home> variable 1
execute if score <cannot_go> variable matches 0 store success score <cannot_go> variable if score <can_access_home> variable matches 0 run tellraw @s [{"text":"[Home]","color":"dark_red","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]}},[{"text":" You do not have access to that home! You can increase your rank to get access to that home. Check the ","color":"red"},{"text":"[Discord]","color":"aqua"},{"text":" for more information on ranks!","color":"red"}]]

# Run
execute if score <cannot_go> variable matches 0 run function pandamium:home/go_check_exists
