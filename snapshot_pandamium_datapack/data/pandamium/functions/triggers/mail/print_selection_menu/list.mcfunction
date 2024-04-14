scoreboard players operation <source_id> variable = @s id

function pandamium:utils/run_command_as_players_sorted_by_rank {command:"function pandamium:triggers/mail/print_selection_menu/as_player"}

tellraw @s [" ",{"text":"[Search Offline Players]","color":"#6100B9","hoverEvent":{"action":"show_text","contents":[{"text":"Click to search for players by username","color":"#6100B9"}]},"clickEvent":{"action":"run_command","value":"/trigger mail set 1000006"}}]
