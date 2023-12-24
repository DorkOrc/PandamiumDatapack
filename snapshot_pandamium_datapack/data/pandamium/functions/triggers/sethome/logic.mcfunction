# get action properties
execute store success score <delete_name> variable if score @s sethome matches -99..-1
execute store success score <do_replace> variable if score @s sethome matches ..-1

# get home number
scoreboard players operation <home> variable = @s sethome
execute if score <home> variable matches ..-1 run scoreboard players operation <home> variable *= #-1 constant
execute if score <home> variable matches 101..199 run scoreboard players remove <home> variable 100

execute unless score <home> variable matches 1..25 run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless score <home> variable matches 1..25 run return 0

# restrictions
execute if score @s jailed matches 1.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s jailed matches 1.. run return 0
execute if score @s parkour.checkpoint matches 0.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]
execute if score @s parkour.checkpoint matches 0.. run return 0

execute if dimension pandamium:staff_world unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot set a home in this dimension!","color":"red"}]
execute if dimension pandamium:staff_world unless score @s staff_perms matches 1.. run return 0

# check perms
execute unless predicate pandamium:can_access_home run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," You do not have access to ",[{"text":"Home ","bold":true},{"score":{"name":"<home>","objective":"variable"}}],"! You can become a donator or vote to increase your rank to get access to that home! Check our ", {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}," for more information on how to donate!"]
execute unless predicate pandamium:can_access_home run return 0

# run
execute store result storage pandamium:templates macro.home__id.home int 1 run scoreboard players get <home> variable
execute store result storage pandamium:templates macro.home__id.id int 1 run scoreboard players get @s id
function pandamium:triggers/sethome/try_set with storage pandamium:templates macro.home__id
