execute if score @s vote matches -101 run return run dialog clear @s

# menu
execute unless predicate pandamium:player/min_staff_perms/helper run scoreboard players set @s vote 1
execute if score @s vote matches ..1 run return run function pandamium:triggers/vote/menu

# inspect player
execute store result storage pandamium:local functions."pandamium:triggers/vote/*".id int 1 run scoreboard players get @s vote
function pandamium:utils/database/players/load/from_id with storage pandamium:local functions."pandamium:triggers/vote/*"
function pandamium:triggers/vote/print_target_votes with storage pandamium.db.players:io selected.entry
