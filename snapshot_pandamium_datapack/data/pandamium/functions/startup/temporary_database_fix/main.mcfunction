execute if score <completed_database_fix_25_8_2023> global matches 1 run return 0

execute store result score <length> variable if data storage pandamium.db:players entries[]
execute store result storage pandamium:templates macro.index.index int 1 store result storage pandamium:templates macro.index__username.index int 1 run scoreboard players set <index> variable 0
function pandamium:startup/temporary_database_fix/loop with storage pandamium:templates macro.index

scoreboard players set <completed_database_fix_25_8_2023> global 1
