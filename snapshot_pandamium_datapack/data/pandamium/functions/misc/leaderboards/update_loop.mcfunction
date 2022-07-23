# should be changed to just the playtime ones, and the vote ones should be moved to the on_vote function
execute as @a run function pandamium:misc/leaderboards/update_self/all

schedule function pandamium:misc/leaderboards/update_loop 60s
