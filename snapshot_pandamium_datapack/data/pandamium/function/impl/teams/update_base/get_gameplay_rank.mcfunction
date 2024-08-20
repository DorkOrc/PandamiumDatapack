scoreboard players set <got_rank> variable 1

function pandamium:utils/get/rank_credits

execute if score <rank_credits> variable matches ..4 run data modify storage pandamium:temp arguments merge value {color:"gray",prefix:'"Guest | "'}
execute if score <rank_credits> variable matches 5..24 run data modify storage pandamium:temp arguments merge value {color:"green",prefix:'"Player | "'}
execute if score <rank_credits> variable matches 25..124 run data modify storage pandamium:temp arguments merge value {color:"dark_green",prefix:'"Member | "'}
execute if score <rank_credits> variable matches 125..499 run data modify storage pandamium:temp arguments merge value {color:"aqua",prefix:'"Elder | "'}
execute if score <rank_credits> variable matches 500..2499 run data modify storage pandamium:temp arguments merge value {color:"dark_aqua",prefix:'"Veteran | "'}
execute if score <rank_credits> variable matches 2500.. run data modify storage pandamium:temp arguments merge value {color:"blue",prefix:'"Elite | "'}
