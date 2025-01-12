function pandamium:impl/teams/init_arguments

scoreboard players set <got_rank> variable 0
execute if score @s supporter_rank matches 1 unless score @s disable_donator_prefix matches 1 store success score <got_rank> variable run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_purple",team_prefix:{text:"Supporter | "}}
execute if score @s vip_rank matches 1 store success score <got_rank> variable run data modify storage pandamium:local functions."pandamium:impl/teams/*" merge value {team_color:"dark_blue",team_prefix:{text:"VIP | "}}
execute if score @s staff_rank matches 1.. unless score @s alt_of matches 1.. run function pandamium:impl/teams/update_base/get_staff_rank
execute if score <got_rank> variable matches 0 run function pandamium:impl/teams/update_base/get_gameplay_rank

# co-owner hover_event for DorkOrc and Sundroid
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:entity_scores",entity:"this",scores:{id:532}},{condition:"minecraft:entity_scores",entity:"this",scores:{id:4}}]} unless score @s staff_rank matches 5 run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_prefix.hover_event.text prepend value {text:"Co-Owner of Pandamium\\n"}

# light_purple color for __T0m__ and DrexHD
execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:entity_scores",entity:"this",scores:{id:2}},{condition:"minecraft:entity_scores",entity:"this",scores:{id:61}}]} run data modify storage pandamium:local functions."pandamium:impl/teams/*".team_color set value "light_purple"

function pandamium:impl/teams/update_base with storage pandamium:local functions."pandamium:impl/teams/*"
