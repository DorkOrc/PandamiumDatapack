scoreboard players set <total_lines_shown> variable 15
function pandamium:impl/leader_boards/get_active_display/main {type:"parkour_3"}
tellraw @s {storage:"pandamium:text",nbt:"input",interpret:true}
