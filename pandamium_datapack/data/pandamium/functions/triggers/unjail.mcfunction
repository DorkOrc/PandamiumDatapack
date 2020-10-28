
execute if score @s unjail matches 1 run tellraw @s [{"text":"","color":"yellow"},"===== ",{"text":"Unjailed Players","bold":true}," =====","\n",{"text":"Player List:","bold":true}]
execute if score @s unjail matches 1 at @a[scores={jailed=1..}] run tellraw @s [{"text":" ","color":"yellow"},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"gold","bold":true}]
execute if score @s unjail matches 1 run tellraw @s {"text":"============================", "color":"yellow"}

scoreboard players set <temp_1> variable 0
execute if score @s unjail matches 2.. at @a if score @s unjail = @p id run scoreboard players set <temp_1> variable 1
execute if score @s unjail matches 2.. if score <temp_1> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," No player was found."]

execute if score @s unjail matches 2.. at @a if score @s unjail = @p id if score @p jailed matches 1.. run function pandamium:misc/get_unjailed
execute if score @s unjail matches 2.. at @a if score @s unjail = @p id unless score @p jailed matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," This player is already unjailed."]

scoreboard players reset @s unjail
scoreboard players enable @s unjail
