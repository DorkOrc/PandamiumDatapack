# arguments: reward_index

$execute store success score <warning_message> variable if data storage pandamium:rewards_shop rewards[{reward_id:"$(reward_id)"}].warning_message
$execute if score <warning_message> variable matches 1 run data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_pages/*".click_event set value {action:"show_dialog",dialog:{type:"minecraft:confirmation",title:"Pandamium Rewards Shop",body:{type:"minecraft:plain_message",contents:["Buying this will spawn a Shulker mob at your feet.","\n\nAre you sure you want to do this?"],width:400},yes:{label:"YES, summon it",action:{type:"minecraft:run_command",command:"trigger vote_shop set -$(reward_index)"}},no:{label:"NO, stop!"}}}
$execute if score <warning_message> variable matches 1 run return run data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_pages/*".click_event.dialog.body.contents[0] set from storage pandamium:rewards_shop rewards[{reward_id:"$(reward_id)"}].warning_message

$data modify storage pandamium:local functions."pandamium:startup/rewards_shop/load_pages/*".click_event set value {action:"run_command",command:"trigger vote_shop set -$(reward_index)"}
