scoreboard players set <got_rank> variable 1

function pandamium:utils/get/rank_credits

execute if score <rank_credits> variable matches ..4 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"gray",team_prefix:{text:"Guest | "}}
execute if score <rank_credits> variable matches 5..24 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"green",team_prefix:{text:"Player | "}}
execute if score <rank_credits> variable matches 25..124 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_green",team_prefix:{text:"Member | "}}
execute if score <rank_credits> variable matches 125..499 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"aqua",team_prefix:{text:"Elder | "}}
execute if score <rank_credits> variable matches 500..2499 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_aqua",team_prefix:{text:"Veteran | "}}
execute if score <rank_credits> variable matches 2500.. run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"blue",team_prefix:{text:"Elite | "}}
