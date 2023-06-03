scoreboard players operation @s session_id = <next_session_id> global
scoreboard players add <next_session_id> global 1
execute unless score <next_session_id> global matches 1..50 run scoreboard players set <next_session_id> global 1
