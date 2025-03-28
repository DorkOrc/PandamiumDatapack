data modify storage pandamium:text input set value ['{"username":"',{nbt:"entries[0].display.name",storage:"pandamium:temp",interpret:true},'","values":[',{nbt:"entries[0].value",storage:"pandamium:temp"},'],"place":',{storage:"pandamium:temp",nbt:"entries[0].place"},'}']
function pandamium:utils/text/input/resolve
function pandamium:utils/text/input/force_compound
data modify storage pandamium:temp components append from storage pandamium:text input
data modify storage pandamium:temp components append value {text:","}

data remove storage pandamium:temp entries[0]
scoreboard players add <index> variable 1
execute if score <index> variable matches 0..14 if data storage pandamium:temp entries[0] run function pandamium:impl/leaderboards/print_embed_data/last_month_leaderboards/monthly_votes_loop
