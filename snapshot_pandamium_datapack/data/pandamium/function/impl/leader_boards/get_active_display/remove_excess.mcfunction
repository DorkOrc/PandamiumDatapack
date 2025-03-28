data remove storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".entries[0].users[-1]
execute unless data storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".entries[0].users[0] run data remove storage pandamium:local functions."pandamium:impl/leader_boards/get_active_display/*".entries[0]
scoreboard players remove <users_in_active_entries> variable 1
execute if score <users_in_active_entries> variable > <total_lines_shown> variable run function pandamium:impl/leader_boards/get_active_display/remove_excess
