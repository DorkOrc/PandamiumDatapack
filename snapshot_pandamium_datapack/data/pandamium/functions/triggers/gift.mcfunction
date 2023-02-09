tag @s add source

execute if score @s gift matches 1 run function pandamium:misc/gift/print_menu

execute store success score <returned> variable unless score @s gift matches 2..
execute if score <returned> variable matches 0 store success score <returned> variable if score @s gift_cooldown matches 1.. run function pandamium:misc/gift/print_cooldown
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s vote_credits matches 1.. run tellraw @s [{"text":"[Gift]","color":"dark_red"},{"text":" You do not have any vote credits!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s gift = @s id run tellraw @s [{"text":"[Gift]","color":"dark_red"},{"text":" You cannot send a vote credit to yourself!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s gift
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Gift]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"gift"}},"!"]]

# Run
execute if score <returned> variable matches 0 as @p[tag=target] at @s run function pandamium:misc/gift/receive_vote_credit
execute if score <returned> variable matches 0 run scoreboard players remove @s vote_credits 1
execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"green"},{"text":"[Gift]","color":"blue"}," Gifted ",{"selector":"@p[tag=target]"}," a ",{"text":"vote credit","color":"aqua"},"! You now have ",{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"aqua"}," vote credit",{"text":"(s)","color":"gray"},"! ",[{"text":"(-","color":"red"},{"text":"1","bold":true},")"]]
execute if score <returned> variable matches 0 unless entity @s[gamemode=spectator] unless score @s hidden matches 1.. anchored eyes run particle heart ^ ^ ^ 0.3 0.3 0.3 0 5
execute if score <returned> variable matches 0 run scoreboard players set @s gift_cooldown 18000

#

tag @a remove target
tag @s remove source
scoreboard players reset @s gift
scoreboard players enable @s gift
