tag @s add source
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 if score @s gift matches 1.. store success score <returned> variable run function pandamium:triggers/gift/print_menu/main

# select player from session id
execute if score <returned> variable matches 0 if score @s gift matches -1060..-1001 run function pandamium:triggers/gift/select_player_from_session_id

#
execute if score <returned> variable matches 0 if score @s gift matches ..-1 store success score <returned> variable run tellraw @s [{"text":"[Gift]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# detect issues
execute if score <returned> variable matches 0 if score @s gift_cooldown matches 1.. store success score <returned> variable run function pandamium:triggers/gift/print_cooldown
execute if score <returned> variable matches 0 unless score @s vote_credits matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Gift]","color":"dark_red"},{"text":" You do not have any vote credits!","color":"red"}]
execute if score <returned> variable matches 0 if score @s gift = @s id store success score <returned> variable run tellraw @s [{"text":"[Gift]","color":"dark_red"},{"text":" You cannot send a vote credit to yourself!","color":"red"}]

# select player
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s gift
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Gift]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"gift"}},"!"]]

# Run
execute if score <returned> variable matches 0 as @a[tag=target,limit=1] at @s run function pandamium:triggers/gift/receive_vote_credit
execute if score <returned> variable matches 0 run scoreboard players remove @s vote_credits 1
execute if score <returned> variable matches 0 unless entity @s[gamemode=spectator] unless score @s hidden matches 1.. anchored eyes run particle heart ^ ^ ^ 0.3 0.3 0.3 0 5
execute if score <returned> variable matches 0 run scoreboard players set @s gift_cooldown 18000
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"","color":"green"},{"text":"[Gift]","color":"blue"}," Gifted ",{"selector":"@a[tag=target,limit=1]"}," a ",{"text":"vote credit","color":"aqua"},"! You now have ",{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"aqua"}," vote credit",{"text":"(s)","color":"gray"},"! ",[{"text":"(-","color":"red"},{"text":"1","bold":true},")"]]

# post
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Gift]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

tag @a remove target
tag @s remove source
scoreboard players reset @s gift
scoreboard players enable @s gift
