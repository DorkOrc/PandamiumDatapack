scoreboard players set <target_exists> variable 0
scoreboard players operation <target_id> variable = @s selected_player
execute as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

# Run
scoreboard players set <home> variable 0
scoreboard players operation <home> variable -= @s homes

scoreboard players set <home_exists> variable 0
execute if score <returned> variable matches 0 if score <home> variable matches 1 as @a[tag=target,limit=1] if score @s home_1_x = @s home_1_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_1
execute if score <returned> variable matches 0 if score <home> variable matches 2 as @a[tag=target,limit=1] if score @s home_2_x = @s home_2_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_2
execute if score <returned> variable matches 0 if score <home> variable matches 3 as @a[tag=target,limit=1] if score @s home_3_x = @s home_3_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_3
execute if score <returned> variable matches 0 if score <home> variable matches 4 as @a[tag=target,limit=1] if score @s home_4_x = @s home_4_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_4
execute if score <returned> variable matches 0 if score <home> variable matches 5 as @a[tag=target,limit=1] if score @s home_5_x = @s home_5_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_5
execute if score <returned> variable matches 0 if score <home> variable matches 6 as @a[tag=target,limit=1] if score @s home_6_x = @s home_6_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_6
execute if score <returned> variable matches 0 if score <home> variable matches 7 as @a[tag=target,limit=1] if score @s home_7_x = @s home_7_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_7
execute if score <returned> variable matches 0 if score <home> variable matches 8 as @a[tag=target,limit=1] if score @s home_8_x = @s home_8_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_8
execute if score <returned> variable matches 0 if score <home> variable matches 9 as @a[tag=target,limit=1] if score @s home_9_x = @s home_9_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_9
execute if score <returned> variable matches 0 if score <home> variable matches 10 as @a[tag=target,limit=1] if score @s home_10_x = @s home_10_x store success score <home_exists> variable run function pandamium:impl/home/go/run/setup_10
execute if score <returned> variable matches 0 store success score <returned> variable if score <home_exists> variable matches 0 run tellraw @s [{"text":"[Homes] ","color":"dark_red"},{"selector":"@a[tag=target,limit=1]","color":"red"},[{"text":" has not set home ","color":"red"},{"score":{"name":"<home>","objective":"variable"}},"!"]]

execute if score <returned> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 run function pandamium:utils/teleport/to_scores

execute if score <returned> variable matches 0 run scoreboard players set <home_number> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <home_number> variable -= @s homes
execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Homes]","color":"gold"}," Teleported to ",[{"selector":"@a[tag=target,limit=1]"},"'s"],[{"text":" Home ","color":"gold","bold":true},{"score":{"name":"<home_number>","objective":"variable"}}]," in spectator mode!"]
