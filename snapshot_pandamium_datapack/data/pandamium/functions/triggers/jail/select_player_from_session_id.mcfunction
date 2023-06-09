scoreboard players set <target_session_id> variable -2000000000
scoreboard players operation <target_session_id> variable -= @s jail
scoreboard players set <target_id> variable 0

execute if score <target_session_id> variable matches 1001.. run scoreboard players set <jail_type> variable 2
execute if score <target_session_id> variable matches 1001.. run scoreboard players remove <target_session_id> variable 1000

scoreboard players set <target_exists> variable 0
execute as @a if score @s session_id = <target_session_id> variable store success score <target_exists> variable run scoreboard players operation <target_id> variable = @s id
execute if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Jail]","color":"dark_red"},[{"text":" Could not find a player with Session ID ","color":"red"},{"score":{"name":"<target_session_id>","objective":"variable"}},"!"]]

scoreboard players operation @s jail = <target_id> variable
