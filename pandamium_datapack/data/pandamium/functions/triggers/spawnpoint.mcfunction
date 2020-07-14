execute if score @s show_spawnpoint matches 1 run scoreboard players operation @s show_spawnpoint = @s id

execute at @a if score @s show_spawnpoint = @p id unless score @p spawnpoint_x = @p spawnpoint_x run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"}," has not set a spawnpoint."]

execute at @a if score @s show_spawnpoint = @p id if data entity @s SpawnX if score @p spawnpoint_dim matches -1 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s current spawnpoint is at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the Nether."]
execute at @a if score @s show_spawnpoint = @p id if data entity @s SpawnX if score @p spawnpoint_dim matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s current spawnpoint is at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the Overworld."]
execute at @a if score @s show_spawnpoint = @p id if data entity @s SpawnX if score @p spawnpoint_dim matches 1 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s current spawnpoint is at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the End."]

execute at @a if score @s show_spawnpoint = @p id unless data entity @s SpawnX if score @p spawnpoint_dim matches -1 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s last spawnpoint was at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the Nether."]
execute at @a if score @s show_spawnpoint = @p id unless data entity @s SpawnX if score @p spawnpoint_dim matches 0 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s last spawnpoint was at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the Overworld."]
execute at @a if score @s show_spawnpoint = @p id unless data entity @s SpawnX if score @p spawnpoint_dim matches 1 run tellraw @s [{"text":"[Spawnpoint] ","color":"green"},{"selector":"@p"},"'s last spawnpoint was at ",{"score":{"name":"@p","objective":"spawnpoint_x"}}," ",{"score":{"name":"@p","objective":"spawnpoint_y"}}," ",{"score":{"name":"@p","objective":"spawnpoint_z"}}," in the End."]

scoreboard players set @s temp_1 0
execute at @a if score @s show_spawnpoint = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Show Spawnpoint]", "color":"dark_red"}," No player found with that ID."]

scoreboard players reset @s show_spawnpoint
scoreboard players enable @s show_spawnpoint
