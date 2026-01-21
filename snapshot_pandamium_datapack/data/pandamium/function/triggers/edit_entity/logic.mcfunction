function pandamium:utils/database/players/load/self
execute unless data storage pandamium.db.players:io selected.entry.data.target_entity run return 0

scoreboard players set <operation> variable 0
execute if score @s edit_entity matches ..-101 run scoreboard players set <operation> variable -100
execute if score @s edit_entity matches ..-101 run scoreboard players operation <operation> variable -= @s edit_entity
execute unless score <operation> variable matches 1..6 run return run tellraw @s {color:"red",text:"Invalid operation"}

scoreboard players set <use_name_tag> variable 0
execute if score <operation> variable matches 3 store result score <use_name_tag> variable run clear @s name_tag[custom_name="#"] 0

scoreboard players set <entity_loaded> variable 0
tag @s add edit_entity.player
execute if score <operation> variable matches 1.. run function do:target/uuid. {args:{uuid__from:"storage pandamium.db.players:io selected.entry.data.target_entity",function:"pandamium:triggers/edit_entity/as_entity"}}
tag @s remove edit_entity.player
execute if score <entity_loaded> variable matches 0 run return run tellraw @s {color:"red",text:"Missing entity"}

execute if score <use_name_tag> variable matches 1.. if items entity @s weapon.mainhand name_tag[custom_name="#"] run return run item modify entity @s weapon.mainhand pandamium:decrement_count
execute if score <use_name_tag> variable matches 1.. if items entity @s weapon.offhand name_tag[custom_name="#"] run return run item modify entity @s weapon.offhand pandamium:decrement_count
execute if score <use_name_tag> variable matches 1.. run clear @s name_tag[custom_name="#"] 1
