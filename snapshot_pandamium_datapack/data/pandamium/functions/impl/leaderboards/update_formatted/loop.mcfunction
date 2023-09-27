data modify storage pandamium:temp format append value {display:{name:'"???"'},place:"?",value:"?",root_text_component:'{"text":"","color":"#00FFFF"}'}
data modify storage pandamium:temp format[-1].display merge from storage pandamium:temp entries[0].players[0].display
data modify storage pandamium:temp format[-1].display merge from storage pandamium:temp entries[0].display
data modify storage pandamium:temp format[-1].value set from storage pandamium:temp entries[0].value
execute store result storage pandamium:temp format[-1].place int 1 run scoreboard players get <place> variable

execute if score <place> variable matches 1 run data modify storage pandamium:temp format[-1].root_text_component set value '{"text":"","color":"#FFD700"}'
execute if score <place> variable matches 2 run data modify storage pandamium:temp format[-1].root_text_component set value '{"text":"","color":"#909090"}'
execute if score <place> variable matches 3 run data modify storage pandamium:temp format[-1].root_text_component set value '{"text":"","color":"#CD7F32"}'

data remove storage pandamium:temp entries[0].players[0]
execute unless data storage pandamium:temp entries[0].players[0] run scoreboard players add <place> variable 1
execute unless data storage pandamium:temp entries[0].players[0] run data remove storage pandamium:temp entries[0]
execute if data storage pandamium:temp entries[0] run function pandamium:impl/leaderboards/update_formatted/loop
