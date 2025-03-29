# updates every online player's place on the playtime leaderboards

execute unless score <spawn_area_ticking_state> global matches 1 run return run schedule function pandamium:impl/leader_boards/update_holograms 5s

schedule function pandamium:utils/leader_board/update_hologram/only/parkour_3 1t replace
schedule function pandamium:utils/leader_board/update_hologram/only/monthly_playtime 2t replace
schedule function pandamium:utils/leader_board/update_hologram/only/monthly_votes 3t replace
schedule function pandamium:utils/leader_board/update_hologram/only/yearly_playtime 4t replace
schedule function pandamium:utils/leader_board/update_hologram/only/yearly_votes 5t replace

schedule function pandamium:impl/leader_boards/update_holograms 30s
