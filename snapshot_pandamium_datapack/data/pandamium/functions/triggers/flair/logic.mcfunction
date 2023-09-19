execute unless score @s gameplay_perms matches 6.. run function pandamium:utils/print_donator_only_message
execute unless score @s gameplay_perms matches 6.. run return 0

#
function pandamium:utils/database/players/load/self

# menu
execute if score @s flair matches 1.. run function pandamium:triggers/flair/print_menu/main
execute if score @s flair matches 1.. run return 0

# try remove flair
execute if score @s flair matches -1 run function pandamium:triggers/flair/remove_flair
execute if score @s flair matches -1 run return 0

# try reset flair colour
execute if score @s flair matches -2 run function pandamium:triggers/flair/reset_colour
execute if score @s flair matches -2 run return 0

# try changing flair colour
execute if score @s flair matches -199..-101 run function pandamium:triggers/flair/set_colour/main
execute if score @s flair matches -199..-101 run return 0

# try setting the flair
execute unless score @s flair matches ..-1001 run tellraw @s [{"text":"[Flair]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless score @s flair matches ..-1001 run return 0

scoreboard players set <index> variable -1001
execute store result storage pandamium:templates macro.index.index int 1 run scoreboard players operation <index> variable -= @s flair
function pandamium:triggers/flair/try_set_flair/main with storage pandamium:templates macro.index
