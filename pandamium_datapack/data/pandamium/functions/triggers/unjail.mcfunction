tag @s add running_trigger

execute if score @s unjail matches 1 if entity @a[scores={jailed=1..}] run tellraw @s [{"text":"","color":"yellow"},"===== ",{"text":"Jailed Players","bold":true}," =====","\n",{"text":"Player List:","bold":true}]
execute if score @s unjail matches 1 if entity @a[scores={jailed=1..}] as @a[scores={jailed=1..}] run tellraw @p[tag=running_trigger] [{"text":" ","color":"yellow","hoverEvent":{"action":"show_text","contents":[["cheater = ",{"score":{"name":"@s","objective":"cheater"}}],"\n",["jailed = ",{"score":{"name":"@s","objective":"jailed"}}]]}},{"selector":"@s","hoverEvent":{"action":"show_text","contents":[["cheater = ",{"score":{"name":"@s","objective":"cheater"}}],"\n",["jailed = ",{"score":{"name":"@s","objective":"jailed"}}]]}}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute if score @s unjail matches 1 if entity @a[scores={jailed=1..}] run tellraw @s {"text":"==========================", "color":"yellow"}
execute if score @s unjail matches 1 unless entity @a[scores={jailed=1..}] run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," There are no jailed players online!"]

scoreboard players set <player_exists> variable 0
execute if score @s unjail matches 2.. as @a if score @s id = @p[tag=running_trigger] unjail run scoreboard players set <player_exists> variable 1
execute if score @s unjail matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

execute if score @s unjail matches 2.. as @a if score @s id = @p[tag=running_trigger] unjail unless score @s jailed matches 1.. run tellraw @p[tag=running_trigger] [{"text":"[Info]","color":"dark_red"},{"text":" This player is already unjailed!","color":"red"}]
execute if score @s unjail matches 2.. as @a if score @s id = @p[tag=running_trigger] unjail if score @s jailed matches 1.. run function pandamium:misc/get_unjailed

tag @s remove running_trigger
scoreboard players reset @s unjail
scoreboard players enable @s unjail
