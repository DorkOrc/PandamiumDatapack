scoreboard players set <receiver_exists> variable 0
execute store result storage pandamium:templates macro.id.id int 1 run scoreboard players operation <receiver_id> variable = @s tpa
execute as @a if score @s id = <receiver_id> variable run function pandamium:impl/tpa/send_request/as_receiver

execute if score <receiver_exists> variable matches 0 run function pandamium:utils/get/display_name/from_id with storage pandamium:templates macro.id
execute if score <receiver_exists> variable matches 0 if data storage pandamium:temp display_name run return run tellraw @s [{"text":"[TPA]","color":"dark_red"},[{"text":" ","color":"red"},{"storage":"pandamium:temp","nbt":"display_name","interpret":true}," is not online!"]]
execute if score <receiver_exists> variable matches 0 run tellraw @s [{"text":"[TPA]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"tpa"}},"!"]]
