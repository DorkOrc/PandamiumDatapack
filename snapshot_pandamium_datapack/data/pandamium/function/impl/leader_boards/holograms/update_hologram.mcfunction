# arguments: type

tag @s add pandamium.leader_board_hologram
tp @s ~ ~ ~ ~ ~

data modify entity @s line_width set value 1000
data modify entity @s background set from storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".display.hologram_color
data modify entity @s transformation.scale[] set from storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".display.hologram_scale

execute store result score <total_lines_shown> variable run data get storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*".display.hologram_length
execute unless score <total_lines_shown> variable matches 1..25 run scoreboard players set <total_lines_shown> variable 15
function pandamium:impl/leader_boards/get_active_display/main with storage pandamium:local functions."pandamium:impl/leader_boards/holograms/*"

data modify entity @s text set value [{color:"aqua",text:"======= "},{bold:true,storage:"pandamium:local",nbt:'functions."pandamium:impl/leader_boards/holograms/*".display.name',interpret:true}," =======\n",{storage:"pandamium:text",nbt:"input",interpret:true},"\n=================================="]

execute store result entity @s transformation.translation[1] float -0.1375 run scoreboard players add <users_in_active_entries> variable 2
