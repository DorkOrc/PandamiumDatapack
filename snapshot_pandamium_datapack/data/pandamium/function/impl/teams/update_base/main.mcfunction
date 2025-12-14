function pandamium:impl/teams/init_arguments

execute if predicate pandamium:player/displayed_rank/owner run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_red",team_prefix:{text:"",extra:[{text:"Owner",bold:true}," | "]}}
execute if predicate pandamium:player/displayed_rank/admin run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"red",team_prefix:{text:"",extra:[{text:"Admin",bold:true}," | "]}}
execute if predicate pandamium:player/displayed_rank/senior_moderator run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"gold",team_prefix:{text:"",extra:[{text:"Sr. Mod",bold:true}," | "]}}
execute if predicate pandamium:player/displayed_rank/moderator run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"gold",team_prefix:{text:"Mod | "}}
execute if predicate pandamium:player/displayed_rank/helper run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"yellow",team_prefix:{text:"Helper | "}}
execute if predicate pandamium:player/displayed_rank/supporter run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_purple",team_prefix:{text:"Supporter | "}}
execute if predicate pandamium:player/displayed_rank/vip run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"light_purple",team_prefix:{text:"VIP | "}}
execute if predicate pandamium:player/displayed_rank/elite run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"blue",team_prefix:{text:"Elite | "}}
execute if predicate pandamium:player/displayed_rank/veteran run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_aqua",team_prefix:{text:"Veteran | "}}
execute if predicate pandamium:player/displayed_rank/elder run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"aqua",team_prefix:{text:"Elder | "}}
execute if predicate pandamium:player/displayed_rank/member run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_green",team_prefix:{text:"Member | "}}
execute if predicate pandamium:player/displayed_rank/player run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"green",team_prefix:{text:"Player | "}}
execute if predicate pandamium:player/displayed_rank/guest run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"gray",team_prefix:{text:"Guest | "}}

# extras
execute if predicate pandamium:player/name_override/owner_label unless predicate pandamium:player/displayed_rank/owner run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_prefix.hover_event.value prepend value {text:"Owner of Pandamium\n"}
execute if predicate pandamium:player/name_override/dark_blue run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_color set value "dark_blue"

function pandamium:impl/teams/update_base with storage pandamium:local functions."pandamium:impl/teams/*"
