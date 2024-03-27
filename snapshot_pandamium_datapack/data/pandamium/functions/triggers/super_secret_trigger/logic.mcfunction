execute if score @s parkour.checkpoint matches 0.. run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},{"text":" You cannot use this trigger currently!","color":"red"}]
execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},{"text":" You cannot use this trigger while jailed!","color":"red"}]

execute if score @s super_secret_trigger matches ..-1 store result score <removed> variable run function pandamium:impl/custom_effects/remove/main {name: "super_secret_scale"}
execute if score @s super_secret_trigger matches ..-1 if score <removed> variable matches 1 run return run tellraw @s [{"text":"[Super Secret]","color":"dark_green"},{"text":" Your scale has been reset!","color":"green"}]
execute if score @s super_secret_trigger matches ..-1 run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},{"text":" Effect is already removed!","color":"red"}]

execute store result score <cooldown_seconds> variable run scoreboard players get @s super_secret_trigger_cooldown
execute if score <cooldown_seconds> variable matches 1..19 run scoreboard players set <cooldown_seconds> variable 20
scoreboard players operation <cooldown_seconds> variable /= #ticks_per_second constant

function pandamium:utils/database/players/load/self
execute if score @s super_secret_trigger_cooldown matches 40.. if data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{name:"super_secret_scale"}}] run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},[{"text":" Cooldown: ","color":"red"},[{"score":{"name":"<cooldown_seconds>","objective":"variable"},"bold":true}," seconds"],"! "],{"text":"[❌]","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to reset your scale","color":"dark_red"}]},"clickEvent":{"action":"run_command","value":"/trigger super_secret_trigger set -1"}}]
execute if score @s super_secret_trigger_cooldown matches 40.. run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},[{"text":" Cooldown: ","color":"red"},[{"score":{"name":"<cooldown_seconds>","objective":"variable"},"bold":true}," seconds"],"!"]]
execute if score @s super_secret_trigger_cooldown matches 1..39 run return run tellraw @s [{"text":"[Super Secret]","color":"dark_red"},[{"text":" Cooldown: ","color":"red"},{"text":"1 second","bold":true},"!"]]

function pandamium:impl/custom_effects/add/main {name: "super_secret_scale"}
scoreboard players set @s super_secret_trigger_cooldown 6000
