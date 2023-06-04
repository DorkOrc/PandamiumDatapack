data modify storage pandamium:temp session_data set value {}

execute if score @s session_id matches 1..15 run function pandamium:impl/get_session_data/tree/1..15
execute if score @s session_id matches 16..30 run function pandamium:impl/get_session_data/tree/16..30
execute if score @s session_id matches 31..45 run function pandamium:impl/get_session_data/tree/31..45
execute if score @s session_id matches 46..60 run function pandamium:impl/get_session_data/tree/46..60
