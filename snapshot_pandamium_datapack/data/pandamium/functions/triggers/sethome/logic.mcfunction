scoreboard players operation <home> variable = @s sethome
scoreboard players set <do_replace> variable 0
execute if score <home> variable matches ..-1 store success score <do_replace> variable run scoreboard players operation <home> variable *= #-1 constant
execute unless score <home> variable matches 1..10 run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# restrictions
execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s parkour.checkpoint matches 0.. run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]

execute if dimension pandamium:staff_world unless score @s staff_perms matches 1.. run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot set a home in this dimension!","color":"red"}]
execute if entity @s[predicate=pandamium:in_donator_area] run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot set a home here!","color":"red"}]

# check perms
execute unless predicate pandamium:can_access_home run return run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," You do not have access to ",[{"text":"Home ","bold":true},{"score":{"name":"<home>","objective":"variable"}}],"! You can become a donator or vote to increase your rank to get access to that home! Check our ", {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}," for more information on how to donate!"]

# run
execute store result storage pandamium:templates macro.home.home int 1 run scoreboard players get <home> variable
function pandamium:triggers/sethome/try_set with storage pandamium:templates macro.home
