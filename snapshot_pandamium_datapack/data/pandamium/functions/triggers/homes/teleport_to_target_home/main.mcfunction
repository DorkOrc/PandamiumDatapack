execute unless score @s staff_perms matches 2.. run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players operation <id> variable = @s selected_player
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

data modify storage pandamium:temp arguments set value {home: 1}
execute store result storage pandamium:temp arguments.home int -1 run scoreboard players get @s homes
execute as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:triggers/homes/teleport_to_target_home/get_teleport_destination with storage pandamium:temp arguments

gamemode spectator
function pandamium:utils/teleport/to_scores
