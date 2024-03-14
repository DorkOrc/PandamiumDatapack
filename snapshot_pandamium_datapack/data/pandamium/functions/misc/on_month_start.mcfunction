# Gets ran at the begining of every month

execute if score <month> global matches 1 run function pandamium:misc/on_year_start

function pandamium:impl/leaderboards/on_month_start/main
function pandamium:misc/leaderboards/refresh_holograms

scoreboard players set <vote_credits_rewarded> global 2
tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" The ","color":"green"},{"text":"monthly leader boards","color":"aqua"}," have been reset and a week of ",{"text":"double reward credits for voting","color":"aqua"}," has begun!"]]
