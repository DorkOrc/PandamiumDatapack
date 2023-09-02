# updates every online player's place on the playtime leaderboards

execute as @a run function pandamium:misc/leaderboards/update_own_place/groups/all_playtimes

schedule function pandamium:impl/leaderboards/update_loop 60s
