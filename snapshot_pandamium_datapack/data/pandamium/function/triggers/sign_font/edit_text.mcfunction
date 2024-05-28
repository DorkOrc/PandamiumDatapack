# context: positioned <sign>

execute if score <all_lines> variable matches 1 run return run function pandamium:triggers/sign_font/queue_all_lines

data modify storage pandamium:temp messages set value ['""','""','""','""']
execute if score <looking_at_front> variable matches 1 run data modify storage pandamium:temp messages set from block ~ ~ ~ front_text.messages
execute if score <looking_at_front> variable matches 0 run data modify storage pandamium:temp messages set from block ~ ~ ~ back_text.messages

scoreboard players set <lines_changed> variable 0

# Apply font changes to selected lines
execute if score <line> variable matches 1 run data modify storage pandamium:temp text set from storage pandamium:temp messages[0]
execute if score <line> variable matches 1 in pandamium:staff_world run function pandamium:impl/font/apply_style/main
execute if score <line> variable matches 1 store success score <text_changed> variable run data modify storage pandamium:temp messages[0] set from storage pandamium:temp text
execute if score <line> variable matches 1 if score <text_changed> variable matches 1 run scoreboard players add <lines_changed> variable 1

execute if score <line> variable matches 2 run data modify storage pandamium:temp text set from storage pandamium:temp messages[1]
execute if score <line> variable matches 2 in pandamium:staff_world run function pandamium:impl/font/apply_style/main
execute if score <line> variable matches 2 store success score <text_changed> variable run data modify storage pandamium:temp messages[1] set from storage pandamium:temp text
execute if score <line> variable matches 2 if score <text_changed> variable matches 1 run scoreboard players add <lines_changed> variable 1

execute if score <line> variable matches 3 run data modify storage pandamium:temp text set from storage pandamium:temp messages[2]
execute if score <line> variable matches 3 in pandamium:staff_world run function pandamium:impl/font/apply_style/main
execute if score <line> variable matches 3 store success score <text_changed> variable run data modify storage pandamium:temp messages[2] set from storage pandamium:temp text
execute if score <line> variable matches 3 if score <text_changed> variable matches 1 run scoreboard players add <lines_changed> variable 1

execute if score <line> variable matches 4 run data modify storage pandamium:temp text set from storage pandamium:temp messages[3]
execute if score <line> variable matches 4 in pandamium:staff_world run function pandamium:impl/font/apply_style/main
execute if score <line> variable matches 4 store success score <text_changed> variable run data modify storage pandamium:temp messages[3] set from storage pandamium:temp text
execute if score <line> variable matches 4 if score <text_changed> variable matches 1 run scoreboard players add <lines_changed> variable 1

execute if score <looking_at_front> variable matches 1 run data modify block ~ ~ ~ front_text.messages set from storage pandamium:temp messages
execute if score <looking_at_front> variable matches 0 run data modify block ~ ~ ~ back_text.messages set from storage pandamium:temp messages
