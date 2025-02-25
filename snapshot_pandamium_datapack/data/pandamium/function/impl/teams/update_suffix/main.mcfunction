function pandamium:impl/teams/init_arguments

execute if predicate pandamium:can_have_flair run function pandamium:utils/database/players/load/self

execute if predicate pandamium:can_have_flair if data storage pandamium.db.players:io selected.entry.data.flair run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_suffix_components append value {text:"",extra:[{storage:"pandamium.db.players:io",nbt:"selected.entry.data.flair",interpret:true}]}
execute if predicate pandamium:player/show_monthly_leader_board_trophy unless score @s hide_trophy_suffix matches 1 run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_suffix_components append value {text:"🏆",color:"gold",hover_event:{action:"show_text",value:{text:"This player is at the top of a monthly leader board!",color:"gold"}}}

function pandamium:impl/teams/update_suffix with storage pandamium:local functions."pandamium:impl/teams/*"
