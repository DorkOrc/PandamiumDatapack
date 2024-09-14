function pandamium:utils/triggers/disable_player_suffixes

function pandamium:utils/database/players/load/self
execute store success score <has_alts> variable if data storage pandamium.db.players:io selected.entry.data.alts[0]

execute if score @s options matches 1.. run function pandamium:triggers/options/print_menu/main

execute if score @s options matches ..-1 run function pandamium:triggers/options/run_negative_input

scoreboard players reset @s options
scoreboard players enable @s options
