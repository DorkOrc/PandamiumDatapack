execute if score @s edit_entity matches -1 run return run dialog clear @s

execute unless score @s edit_entity matches ..-101 run return run tellraw @s [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option!"}]

function pandamium:utils/database/players/load/self
execute unless data storage pandamium.db.players:io selected.entry.data.target_entity run return run tellraw @s [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" That is not a valid option!"}]

scoreboard players set <operation> variable 0
execute if score @s edit_entity matches ..-101 run scoreboard players set <operation> variable -100
execute if score @s edit_entity matches ..-101 run scoreboard players operation <operation> variable -= @s edit_entity

scoreboard players set <entity_loaded> variable 0
tag @s add edit_entity.player
execute if score <operation> variable matches 1.. run function do:target/uuid. {args:{uuid__from:"storage pandamium.db.players:io selected.entry.data.target_entity",function:"pandamium:triggers/edit_entity/as_entity"}}
execute if score <operation> variable matches 0 run return 0
tag @s remove edit_entity.player
execute if score <entity_loaded> variable matches 0 run return run tellraw @s [{color:"dark_red",text:"[Edit Entity]"},{color:"red",text:" Missing entity!"}]
