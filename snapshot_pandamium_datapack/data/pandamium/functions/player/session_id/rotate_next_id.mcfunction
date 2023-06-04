scoreboard players add <next_session_id> global 1
execute if score <next_session_id> global > <max_session_id> global run scoreboard players set <next_session_id> global 1

scoreboard players set <found_duplicate> variable 0
execute as @a if score @s session_id = <next_session_id> global run scoreboard players set <found_duplicate> variable 1
execute unless score <player_count> global >= <max_session_id> global if score <found_duplicate> variable matches 1 run function pandamium:player/session_id/rotate_next_id
