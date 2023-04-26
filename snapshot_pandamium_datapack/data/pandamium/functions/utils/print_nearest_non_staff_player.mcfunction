tag @s add utils.source
scoreboard players set <non_staff_player_exists> variable 0
execute at @s as @p[scores={staff_perms=0}] store success score <non_staff_player_exists> variable run tellraw @a[tag=utils.source,limit=1] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," The nearest non-staff player is ",{"selector":"@s","color":"gray"}," (",{"score":{"name":"@s","objective":"id"},"bold":true},")!"]
execute if score <non_staff_player_exists> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_gray"},{"text":" There are no non-staff players online!","color":"gray"}]
tag @s remove utils.source