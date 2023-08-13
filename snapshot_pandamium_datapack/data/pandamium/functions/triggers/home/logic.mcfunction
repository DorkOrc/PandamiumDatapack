scoreboard players operation <home> variable = @s home
execute unless score <home> variable matches 1..10 run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option! ","color":"red"},{"text":"[≡]","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"Click to see your homes","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger homes"}}]

# restrictions
execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score @s parkour.checkpoint matches 0.. run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]

# check perms
execute unless predicate pandamium:can_access_home run return run tellraw @s [{"text":"","color":"red"},{"text":"[Homes]","color":"dark_red"}," You do not have access to ",[{"text":"Home ","bold":true},{"score":{"name":"<home>","objective":"variable"}}],"! You can become a donator or vote to increase your rank to get access to that home! Check our ", {"text":"[Discord]","color":"aqua","hoverEvent":{"action":"show_text","value":"Click to open!"},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}," for more information on how to donate!"]

# run
data modify storage pandamium:temp arguments set value {}
execute store result storage pandamium:temp arguments.home int 1 run scoreboard players get <home> variable
function pandamium:triggers/home/try_teleport with storage pandamium:temp arguments
