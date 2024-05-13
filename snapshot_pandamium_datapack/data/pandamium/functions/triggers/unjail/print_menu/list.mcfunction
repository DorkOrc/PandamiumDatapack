execute as @a[scores={jailed=1..}] run function pandamium:triggers/unjail/print_menu/as_player
execute unless entity @a[scores={jailed=1..},limit=1] run tellraw @s {"text":" There are no jail players online!","color":"gray"}

tellraw @s [" ",{"text":"[Search Offline Players]","color":"#6100B9","hoverEvent":{"action":"show_text","contents":[{"text":"Click to search for players by username","color":"#6100B9"}]},"clickEvent":{"action":"run_command","value":"/trigger jail set 1000001"}}]
