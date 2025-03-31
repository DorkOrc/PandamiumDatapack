function pandamium:impl/teams/init_arguments

execute if predicate pandamium:can_have_flair run function pandamium:utils/database/player_cache/load/self
execute if predicate pandamium:can_have_flair if data storage pandamium.db.player_cache:io selected.entry.flair run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_suffix_components append value {storage:"pandamium.db.player_cache:io",nbt:"selected.entry.flair",interpret:true}

execute if predicate pandamium:player/show_monthly_leader_board_trophy run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_suffix_components append value {color:"gold",text:"🏆",hover_event:{action:"show_text",value:{color:"gold",text:"This player is at the top of a monthly leader board!"}}}

function pandamium:impl/teams/update_suffix with storage pandamium:local functions."pandamium:impl/teams/*"
