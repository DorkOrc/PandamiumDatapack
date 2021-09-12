data remove storage pandamium:temp SelectedLine
data modify storage pandamium:temp sign set value {}
execute at @e[type=marker,tag=raycast.sign,limit=1] run data modify storage pandamium:temp sign set from block ~ ~ ~

scoreboard players set <line> variable 0
execute if score @s sign_font matches -69..-6 run scoreboard players set <line> variable 1
execute if score @s sign_font matches -133..-70 run scoreboard players set <line> variable 2
execute if score @s sign_font matches -197..-134 run scoreboard players set <line> variable 3
execute if score @s sign_font matches -261..-198 run scoreboard players set <line> variable 4
execute store success score <all_lines> variable if score @s sign_font matches -325..-262

scoreboard players set <font_option> variable 0
scoreboard players operation <font_option> variable -= @s sign_font
scoreboard players remove <font_option> variable 6
scoreboard players operation <font_option> variable %= <64> variable

execute if score <all_lines> variable matches 1 run scoreboard players set <line> variable 1
execute if score <line> variable matches 1 run data modify storage pandamium:temp SelectedLine set from storage pandamium:temp sign.Text1
execute if score <line> variable matches 1 in pandamium:staff_world run function pandamium:misc/sign_font/change_font
execute if score <line> variable matches 1 in pandamium:staff_world run data modify storage pandamium:temp SelectedLine set from block 0 0 0 Text1
execute if score <line> variable matches 1 at @e[type=marker,tag=raycast.sign,limit=1] run data modify block ~ ~ ~ Text1 set from storage pandamium:temp SelectedLine

execute if score <all_lines> variable matches 1 run scoreboard players set <line> variable 2
execute if score <line> variable matches 2 run data modify storage pandamium:temp SelectedLine set from storage pandamium:temp sign.Text2
execute if score <line> variable matches 2 in pandamium:staff_world run function pandamium:misc/sign_font/change_font
execute if score <line> variable matches 2 in pandamium:staff_world run data modify storage pandamium:temp SelectedLine set from block 0 0 0 Text1
execute if score <line> variable matches 2 at @e[type=marker,tag=raycast.sign,limit=1] run data modify block ~ ~ ~ Text2 set from storage pandamium:temp SelectedLine

execute if score <all_lines> variable matches 1 run scoreboard players set <line> variable 3
execute if score <line> variable matches 3 run data modify storage pandamium:temp SelectedLine set from storage pandamium:temp sign.Text3
execute if score <line> variable matches 3 in pandamium:staff_world run function pandamium:misc/sign_font/change_font
execute if score <line> variable matches 3 in pandamium:staff_world run data modify storage pandamium:temp SelectedLine set from block 0 0 0 Text1
execute if score <line> variable matches 3 at @e[type=marker,tag=raycast.sign,limit=1] run data modify block ~ ~ ~ Text3 set from storage pandamium:temp SelectedLine

execute if score <all_lines> variable matches 1 run scoreboard players set <line> variable 4
execute if score <line> variable matches 4 run data modify storage pandamium:temp SelectedLine set from storage pandamium:temp sign.Text4
execute if score <line> variable matches 4 in pandamium:staff_world run function pandamium:misc/sign_font/change_font
execute if score <line> variable matches 4 in pandamium:staff_world run data modify storage pandamium:temp SelectedLine set from block 0 0 0 Text1
execute if score <line> variable matches 4 at @e[type=marker,tag=raycast.sign,limit=1] run data modify block ~ ~ ~ Text4 set from storage pandamium:temp SelectedLine

# Line 1: -6 -> -69
# Line 2: -70 -> -133
# Line 3: -134 -> -197
# Line 4: -198 -> -261
# All Lines: -262 -> -325

tellraw @s [{"text":"[Sign Font]","color":"dark_green"},{"text":" Updated the sign you are looking at!","color":"green"}]
playsound entity.villager.work_mason master @s
