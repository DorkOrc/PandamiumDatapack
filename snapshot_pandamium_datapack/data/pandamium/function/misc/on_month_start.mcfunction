# Gets ran at the begining of every month

execute if score <month> global matches 1 run function pandamium:misc/on_year_start

scoreboard players set <votes_this_month> global 0

function pandamium:impl/leaderboards/on_month_start/main
function pandamium:misc/leaderboards/refresh_holograms

scoreboard players set <double_vote_credits_period_days> global 7
scoreboard players set <vote_credits_rewarded> global 2
tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" The ","color":"green"},{"text":"monthly leader boards","color":"aqua"}," have been reset and a week of ",{"text":"double reward credits for voting","color":"aqua"}," has begun!"]]
