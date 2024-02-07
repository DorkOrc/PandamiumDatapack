execute if score @s parkour.checkpoint matches 0.. run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]

execute if score @s super_secret_trigger matches ..-1 store result score <scale> variable run attribute @s minecraft:generic.scale get 10
execute if score @s super_secret_trigger matches ..-1 if score <scale> variable matches 10 run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s super_secret_trigger matches ..-1 run attribute @s minecraft:generic.scale base set 1.0
execute if score @s super_secret_trigger matches ..-1 run scoreboard players set @s super_secret_trigger_cooldown 4799
execute if score @s super_secret_trigger matches ..-1 run return run tellraw @s [{"text":"[Super Secret]","color":"dark_green"},{"text":" Your scale has been reset!","color":"green"}]

execute store result score <cooldown_seconds> variable run scoreboard players get @s super_secret_trigger_cooldown
scoreboard players add <cooldown_seconds> variable 6000
execute if score <cooldown_seconds> variable matches 1..19 run scoreboard players set <cooldown_seconds> variable 20
scoreboard players operation <cooldown_seconds> variable /= #ticks_per_second constant

execute if score @s super_secret_trigger_cooldown matches 4800.. run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},[{"text":" Cooldown: ","color":"red"},[{"score":{"name":"<cooldown_seconds>","objective":"variable"},"bold":true}," seconds"],"! "],{"text":"[❌]","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset your scale","color":"dark_red"}]},"clickEvent":{"action":"run_command","value":"/trigger super_secret_trigger set -1"}}]
execute if score @s super_secret_trigger_cooldown matches 40..4799 run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},[{"text":" Cooldown: ","color":"red"},[{"score":{"name":"<cooldown_seconds>","objective":"variable"},"bold":true}," seconds"],"!"]]
execute if score @s super_secret_trigger_cooldown matches 1..39 run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},[{"text":" Cooldown: ","color":"red"},{"text":"1 second","bold":true},"!"]]

execute store result score <value> variable run random value 6..35
execute if score <value> variable matches 10..11 run scoreboard players set <value> variable 12
execute if score <value> variable matches 9..10 run scoreboard players set <value> variable 8
execute store result storage pandamium:templates macro.value.value float 0.1 run scoreboard players get <value> variable
function pandamium:triggers/super_secret_trigger/set_scale with storage pandamium:templates macro.value

scoreboard players set @s super_secret_trigger_cooldown 6000
