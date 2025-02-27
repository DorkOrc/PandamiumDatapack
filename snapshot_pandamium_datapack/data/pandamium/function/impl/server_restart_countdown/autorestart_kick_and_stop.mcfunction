data modify storage pandamium:global restart_kick_message set value "We've just completed a regularly scheduled server restart to help with performance!\n\nYou may join back in 1-2 minutes."
execute in pandamium:staff_world positioned 0. 0 0. summon marker if function pandamium:utils/discard_marker run function pandamium:impl/server_restart_countdown/kick_players_and_stop_server
