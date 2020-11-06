
execute if score @s unjail matches 1 if entity @a[scores={jailed=1..}] run tellraw @s [{"text":"","color":"yellow"},"===== ",{"text":"Jailed Players","bold":true}," =====","\n",{"text":"Player List:","bold":true}]
execute if score @s unjail matches 1 if entity @a[scores={jailed=1..}] at @a[scores={jailed=1..}] run tellraw @s [{"text":" ","color":"yellow","hoverEvent":{"action":"show_text","contents":[["jailed=",{"score":{"name":"@p","objective":"jailed"}}],["cheater=",{"score":{"name":"@p","objective":"cheater"}}]]}},{"selector":"@p"}," --- ",{"score":{"name":"@p","objective":"id"},"color":"gold","bold":true}]
execute if score @s unjail matches 1 if entity @a[scores={jailed=1..}] run tellraw @s {"text":"==========================", "color":"yellow"}
execute if score @s unjail matches 1 unless entity @a[scores={jailed=1..}] run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," There are no jailed players online!"]

scoreboard players set <player_exists> variable 0
execute if score @s unjail matches 2.. at @a if score @s unjail = @p id run scoreboard players set <player_exists> variable 1
execute if score @s unjail matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," No player was found!"]

execute if score @s unjail matches 2.. at @a if score @s unjail = @p id unless score @p jailed matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," This player is already unjailed!"]
execute if score @s unjail matches 2.. at @a if score @s unjail = @p id if score @p jailed matches 1.. run function pandamium:misc/get_unjailed

scoreboard players reset @s unjail
scoreboard players enable @s unjail
