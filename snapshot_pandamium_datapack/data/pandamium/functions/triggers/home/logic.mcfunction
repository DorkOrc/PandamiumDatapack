scoreboard players operation <home> variable = @s home
execute unless score <home> variable matches 1..25 run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option! ","color":"red"},{"text":"[≡]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"Click to see your homes","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger homes"}}]
execute unless score <home> variable matches 1..25 run return 0

# restrictions
execute if score @s jailed matches 1.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s jailed matches 1.. run return 0
#execute if score @s parkour.checkpoint matches 0.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]
#execute if score @s parkour.checkpoint matches 0.. run return 0

# check perms
execute unless predicate pandamium:can_access_home run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," You do not have access to ",[{"text":"Home ","bold":true},{"score":{"name":"<home>","objective":"variable"}}],"! You can become a Patreon supporter or vote to increase your rank to get access to that home! Check our ", {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}," for more information on how to support us!"]
execute unless predicate pandamium:can_access_home run return 0

# run
execute store result storage pandamium:templates macro.home.home int 1 run scoreboard players get <home> variable
function pandamium:triggers/home/try_teleport with storage pandamium:templates macro.home
