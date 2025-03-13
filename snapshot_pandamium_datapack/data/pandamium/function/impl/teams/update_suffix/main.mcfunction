function pandamium:impl/teams/init_arguments

execute if predicate pandamium:can_have_flair run function pandamium:utils/database/player_cache/load/self
execute if predicate pandamium:can_have_flair if data storage pandamium.db.player_cache:io selected.entry.flair run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_suffix_components append value {text:"",extra:[{storage:"pandamium.db.player_cache:io",nbt:"selected.entry.flair",interpret:true}]}

execute if predicate pandamium:at_the_top_of_a_leaderboard unless score @s hide_trophy_suffix matches 1 run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_suffix_components append value {text:"🏆",color:"gold",hover_event:{action:"show_text",value:{text:"This player is at the top of a monthly leader board!",color:"gold"}}}

function pandamium:impl/teams/update_suffix with storage pandamium:local functions."pandamium:impl/teams/*"
