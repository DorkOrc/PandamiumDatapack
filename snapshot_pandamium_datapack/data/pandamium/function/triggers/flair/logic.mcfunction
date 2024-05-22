execute unless predicate pandamium:can_have_flair run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},[{"text":" Only leaderboard high-scorers and Patreon supporters can set a flair! You can check out our ","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}},{"text":"discord server","bold":true}," for more information on how to support us, or try to get into the top ten of a monthly leaderboard!"]]

#
function pandamium:utils/database/players/load/self

# menu
execute if score @s flair matches 1.. run return run function pandamium:triggers/flair/print_menu/main

# try remove flair
execute if score @s flair matches -1 run return run function pandamium:triggers/flair/remove_flair

# try reset flair colour
execute if score @s flair matches -2 run return run function pandamium:triggers/flair/reset_colour

# try changing flair colour
execute if score @s flair matches -199..-101 run return run function pandamium:triggers/flair/set_colour/main

# try setting the flair
execute unless score @s flair matches ..-1001 run return run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players set <index> variable -1001
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players operation <index> variable -= @s flair
function pandamium:triggers/flair/try_set_flair/main with storage pandamium:templates macro.index
