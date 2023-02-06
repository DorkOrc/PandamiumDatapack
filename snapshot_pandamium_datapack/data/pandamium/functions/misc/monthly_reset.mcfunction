# Gets run at the begining of every month

scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_votes

function #pandamium:leaderboards/reset/monthly
scoreboard players set <ticks_since_monthly_leaderboard_holograms_updated> global 1200
function pandamium:misc/leaderboards/update_loop

scoreboard players reset <enderman_farm_x> global
scoreboard players reset <enderman_farm_y> global
scoreboard players reset <enderman_farm_z> global

# Used §a instead of §r because of a bug with text overflowing onto new lines changing its parent formatting
say The monthly §bleaderboards§a and §benderman farm coordinates§a have been §breset§a!
