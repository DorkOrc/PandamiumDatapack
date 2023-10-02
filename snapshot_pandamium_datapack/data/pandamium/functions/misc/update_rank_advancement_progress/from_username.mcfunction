# arguments: username

$data modify storage pandamium:temp arguments set value {rank_name:"guest",progress:0,offset:0,username:"$(username)"}
$function pandamium:utils/get/rank_credits/from_username {username:"$(username)"}
execute if score <rank_credits> variable matches 0 run return 0
execute if score <rank_credits> variable matches 1..5 run data modify storage pandamium:temp arguments merge value {rank_name:"player",offset:0}
execute if score <rank_credits> variable matches 6..25 run data modify storage pandamium:temp arguments merge value {rank_name:"member",offset:5}
execute if score <rank_credits> variable matches 26..125 run data modify storage pandamium:temp arguments merge value {rank_name:"elder",offset:25}
execute if score <rank_credits> variable matches 126..500 run data modify storage pandamium:temp arguments merge value {rank_name:"veteran",offset:125}
execute if score <rank_credits> variable matches 501..2500 run data modify storage pandamium:temp arguments merge value {rank_name:"elite",offset:500}
execute store result score <offset> variable run data get storage pandamium:temp arguments.offset
execute store result storage pandamium:temp arguments.progress int 1 run scoreboard players operation <rank_credits> variable -= <offset> variable

function pandamium:impl/update_rank_advancement_progress/with_advancement with storage pandamium:temp arguments
