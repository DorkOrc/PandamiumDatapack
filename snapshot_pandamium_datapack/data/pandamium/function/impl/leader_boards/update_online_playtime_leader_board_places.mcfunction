# updates every online player's place on the playtime leaderboards

execute as @a run function pandamium:utils/leader_board/update_place/group/playtime/self

schedule function pandamium:impl/leader_boards/update_online_playtime_leader_board_places 60s
