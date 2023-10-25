# run AS item entity

scoreboard players operation <hour_next> variable = <hour> global
scoreboard players add <hour_next> variable 1

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"text":"Unknown Thrower","color":"gray","italic":false}'
execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[1] set value '[{"score":{"name":"<day>","objective":"global"},"color":"gray","italic":false},"/",{"score":{"name":"<month>","objective":"global"}},"/",{"score":{"name":"<year>","objective":"global"}}," between ",{"score":{"name":"<hour>","objective":"global"}},":10 and ",{"score":{"name":"<hour_next>","objective":"variable"}},":10 UTC"]'

scoreboard players set <player_exists> variable 0
execute on origin if entity @s[type=player,scores={jailed=1..}] run function pandamium:impl/jail_items/as_thrower

execute if score <player_exists> variable matches 0 run tag @s add jail_items.ignore
execute if score <player_exists> variable matches 1 in pandamium:staff_world run function pandamium:impl/jail_items/do_transfer
