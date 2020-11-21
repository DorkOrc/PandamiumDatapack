tag @s add doing_trigger

execute if score @p[tag=doing_trigger] unjail matches 1 if entity @a[scores={jailed=1..}] run tellraw @p[tag=doing_trigger] [{"text":"","color":"yellow"},"===== ",{"text":"Jailed Players","bold":true}," =====","\n",{"text":"Player List:","bold":true}]
execute if score @p[tag=doing_trigger] unjail matches 1 if entity @a[scores={jailed=1..}] as @a[scores={jailed=1..}] unless score @s cheater matches 1 run tellraw @p[tag=doing_trigger] [{"text":" ","color":"yellow","hoverEvent":{"action":"show_text","contents":[["cheater = 0"]]}},{"selector":"@s","hoverEvent":{"action":"show_text","contents":[["cheater = 0"]]}}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute if score @p[tag=doing_trigger] unjail matches 1 if entity @a[scores={jailed=1..}] as @a[scores={jailed=1..}] if score @s cheater matches 1 run tellraw @p[tag=doing_trigger] [{"text":" ","color":"yellow","hoverEvent":{"action":"show_text","contents":[["cheater = 1"]]}},{"selector":"@s","hoverEvent":{"action":"show_text","contents":[["cheater = 1"]]}}," --- ",{"score":{"name":"@s","objective":"id"},"color":"gold","bold":true}]
execute if score @p[tag=doing_trigger] unjail matches 1 if entity @a[scores={jailed=1..}] run tellraw @p[tag=doing_trigger] {"text":"==========================", "color":"yellow"}
execute if score @p[tag=doing_trigger] unjail matches 1 unless entity @a[scores={jailed=1..}] run tellraw @p[tag=doing_trigger] [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," There are no jailed players online!"]

scoreboard players set <player_exists> variable 0
execute if score @p[tag=doing_trigger] unjail matches 2.. as @a if score @p[tag=doing_trigger] unjail = @s id run scoreboard players set <player_exists> variable 1
execute if score @p[tag=doing_trigger] unjail matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," No player was found!"]

execute if score @p[tag=doing_trigger] unjail matches 2.. as @a if score @p[tag=doing_trigger] unjail = @s id unless score @s jailed matches 1.. run tellraw @p[tag=doing_trigger] [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," This player is already unjailed!"]
execute if score @p[tag=doing_trigger] unjail matches 2.. as @a if score @p[tag=doing_trigger] unjail = @s id if score @s jailed matches 1.. run function pandamium:misc/get_unjailed

tag @s remove doing_trigger
scoreboard players reset @s unjail
scoreboard players enable @s unjail
