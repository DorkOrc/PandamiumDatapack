# arguments: type, (...)

execute store result score <last_updated_timestamp> variable run data get entity @s data.pandamium.leader_board_hologram.updated_timestamp
scoreboard players operation <last_updated_timestamp> variable -= <current_gametime> global
$execute unless entity @s[tag=!pandamium.leader_board_hologram] if score <last_updated_timestamp> variable matches -199.. run return run schedule function pandamium:utils/leader_board/update_hologram/only/$(type) 10s replace

execute if entity @s[tag=!pandamium.leader_board_hologram] run data modify entity @s data.pandamium.leader_board_hologram.type set from storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".type
tag @s add pandamium.leader_board_hologram
tp @s ~ ~ ~ ~ ~

data modify entity @s line_width set value 1000
data modify entity @s background set from storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".display.hologram_color
data modify entity @s transformation.scale[] set from storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".display.hologram_scale

execute store result score <total_lines_shown> variable run data get storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".display.hologram_length
execute unless score <total_lines_shown> variable matches 1..25 run scoreboard players set <total_lines_shown> variable 15
function pandamium:impl/leader_boards/get_active_display/main with storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*"

execute if score <users_in_active_entries> variable matches 1.. run data modify entity @s text set value [{color:"aqua",text:"======= "},{bold:true,storage:"pandamium:local",nbt:'functions."pandamium:impl/leader_boards/holograms/*".display.name',interpret:true}," =======\n",{storage:"pandamium:text",nbt:"input",interpret:true},"\n=================================="]
execute if score <users_in_active_entries> variable matches 0 run data modify entity @s text set value [{color:"aqua",text:"======= "},{bold:true,storage:"pandamium:local",nbt:'functions."pandamium:impl/leader_boards/holograms/*".display.name',interpret:true}," =======\n",{color:"gray",italic:true,text:"This Leader Board Is Empty"},"\n=================================="]

scoreboard players operation <text_display_lines> variable = <users_in_active_entries> variable
execute if score <users_in_active_entries> variable matches 0 run scoreboard players add <text_display_lines> variable 1
execute store result entity @s transformation.translation[1] float -0.1375 run scoreboard players add <text_display_lines> variable 2

execute store result entity @s data.pandamium.leader_board_hologram.updated_timestamp int 1 run scoreboard players get <current_gametime> global
