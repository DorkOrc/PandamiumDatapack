function pandamium:impl/teams/init_arguments

scoreboard players set <got_rank> variable 0
execute if predicate pandamium:player/displayed_rank/supporter store success score <got_rank> variable run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_purple",team_prefix:{text:"Supporter | "}}
execute if predicate pandamium:player/displayed_rank/vip store success score <got_rank> variable run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"light_purple",team_prefix:{text:"VIP | "}}
execute if predicate pandamium:player/displayed_rank/any_staff_rank run function pandamium:impl/teams/update_base/get_staff_rank
execute if score <got_rank> variable matches 0 run function pandamium:impl/teams/update_base/get_gameplay_rank

# co-owner hover_event for DorkOrc and Sundroid
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:entity_scores",entity:"this",scores:{id:532}},{condition:"minecraft:entity_scores",entity:"this",scores:{id:4}}]} unless score @s staff_rank matches 5 run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_prefix.hover_event.value prepend value {text:"Co-Owner of Pandamium\n"}

# dark_blue color for __T0m__
execute if score @s id matches 2 run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_color set value "dark_blue"

function pandamium:impl/teams/update_base with storage pandamium:local functions."pandamium:impl/teams/*"
