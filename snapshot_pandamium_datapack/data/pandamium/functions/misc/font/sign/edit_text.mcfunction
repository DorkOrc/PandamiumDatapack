# run AT raycast marker
data modify storage pandamium:temp sign set value {}
data modify storage pandamium:temp sign set from block ~ ~ ~

scoreboard players set <lines_changed> variable 0

# Apply font changes to selected lines
execute if score <all_lines> variable matches 1 run scoreboard players set <line> variable 1
execute if score <line> variable matches 1 run data modify storage pandamium:temp Text set from storage pandamium:temp sign.Text1
execute if score <line> variable matches 1 in pandamium:staff_world run function pandamium:misc/font/do_edit
execute if score <line> variable matches 1 run data modify block ~ ~ ~ Text1 set from storage pandamium:temp Text
execute if score <line> variable matches 1 if score <text_changed> variable matches 1 run scoreboard players add <lines_changed> variable 1

execute if score <all_lines> variable matches 1 run scoreboard players set <line> variable 2
execute if score <line> variable matches 2 run data modify storage pandamium:temp Text set from storage pandamium:temp sign.Text2
execute if score <line> variable matches 2 in pandamium:staff_world run function pandamium:misc/font/do_edit
execute if score <line> variable matches 2 run data modify block ~ ~ ~ Text2 set from storage pandamium:temp Text
execute if score <line> variable matches 2 if score <text_changed> variable matches 1 run scoreboard players add <lines_changed> variable 1

execute if score <all_lines> variable matches 1 run scoreboard players set <line> variable 3
execute if score <line> variable matches 3 run data modify storage pandamium:temp Text set from storage pandamium:temp sign.Text3
execute if score <line> variable matches 3 in pandamium:staff_world run function pandamium:misc/font/do_edit
execute if score <line> variable matches 3 run data modify block ~ ~ ~ Text3 set from storage pandamium:temp Text
execute if score <line> variable matches 3 if score <text_changed> variable matches 1 run scoreboard players add <lines_changed> variable 1

execute if score <all_lines> variable matches 1 run scoreboard players set <line> variable 4
execute if score <line> variable matches 4 run data modify storage pandamium:temp Text set from storage pandamium:temp sign.Text4
execute if score <line> variable matches 4 in pandamium:staff_world run function pandamium:misc/font/do_edit
execute if score <line> variable matches 4 run data modify block ~ ~ ~ Text4 set from storage pandamium:temp Text
execute if score <line> variable matches 4 if score <text_changed> variable matches 1 run scoreboard players add <lines_changed> variable 1
