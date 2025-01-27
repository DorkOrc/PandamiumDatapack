scoreboard players set <got_rank> variable 1

execute if score @s staff_rank matches 1 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"yellow",team_prefix:{text:"Helper | "}}
execute if score @s staff_rank matches 2 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"gold",team_prefix:{text:"Mod | "}}
execute if score @s staff_rank matches 3 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"gold",team_prefix:'["",{text:"Sr. Mod",bold:true}," | "]'}
execute if score @s staff_rank matches 4 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"red",team_prefix:'["",{text:"Admin",bold:true}," | "]'}
execute if score @s staff_rank matches 5 run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_red",team_prefix:'["",{text:"Owner",bold:true}," | "]'}
# Using strings containing SNBT due to bug MC-279844 which requires that text components containing booleans be written using explicit booleans in SNBT and not bytes.
