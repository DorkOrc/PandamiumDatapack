# Gets run at the begining of every month

scoreboard players reset * monthly_playtime_ticks
scoreboard players reset * monthly_votes

function #pandamium:leaderboards/reset/monthly
execute in overworld positioned -7.631728 91.0 8.631728 as @e[type=area_effect_cloud,distance=..10,tag=hologram.base] run function pandamium:misc/leaderboards/hologram/reset_hologram_stack 
function pandamium:misc/leaderboards/update_loop

scoreboard players reset <enderman_farm_x> global
scoreboard players reset <enderman_farm_y> global
scoreboard players reset <enderman_farm_z> global

# Used §a instead of §r because of a bug with text overflowing onto new lines changing its parent formatting
say The monthly §bleaderboards§a and §benderman farm coordinates§a have been §breset§a!
