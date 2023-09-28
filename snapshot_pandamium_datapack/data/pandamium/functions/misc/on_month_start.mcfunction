# Gets ran at the begining of every month

scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_votes

function pandamium:misc/leaderboards/backup_and_reset/groups/all_monthly_leaderboards
scoreboard players set <ticks_since_monthly_leaderboard_holograms_updated> global 1200
function pandamium:impl/leaderboards/update_loop

scoreboard players set <vote_credits_rewarded> global 2

tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" The ","color":"green"},{"text":"monthly leaderboards","color":"aqua"}," have been reset and a week of ",{"text":"double reward credits for voting","color":"aqua"}," has begun!"]]
