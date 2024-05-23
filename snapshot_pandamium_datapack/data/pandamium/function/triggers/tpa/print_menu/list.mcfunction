execute store result score <source_is_guest> variable if score @s gameplay_perms matches 0
scoreboard players operation <source_id> variable = @s id

function pandamium:utils/run_command_as_players_sorted_by_rank {command:"function pandamium:triggers/tpa/print_menu/as_player"}
