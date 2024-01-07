# Gets ran at the begining of every month

say hi
function pandamium:impl/leaderboards/on_month_start/main
scoreboard players set <ticks_since_monthly_leaderboard_holograms_updated> global 1200
function pandamium:impl/leaderboards/update_loop

scoreboard players set <vote_credits_rewarded> global 2
tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" The ","color":"green"},{"text":"monthly leader boards","color":"aqua"}," have been reset and a week of ",{"text":"double reward credits for voting","color":"aqua"}," has begun!"]]
