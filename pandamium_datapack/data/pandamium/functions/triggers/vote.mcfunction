
execute unless score @s staff_perms matches 1.. run scoreboard players set @s vote 1
tag @s add running_trigger
execute if score @s vote matches 2.. as @a if score @s id = @p[tag=running_trigger] vote run function pandamium:misc/get_votes
tag @s remove running_trigger

scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s vote_credits 0

execute if score @s vote matches 1 run tellraw @s {"text":"Support Pandamium by Voting Here!","bold":true,"color":"aqua"}
execute if score @s vote matches 1 run tellraw @s [{"text":"Votes: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"votes"},"bold":true,"color":"aqua"}]
execute if score @s vote matches 1 run tellraw @s [{"text":"Monthly Votes: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true,"color":"aqua"}]
execute if score @s vote matches 1 run tellraw @s [{"text":"Vote Credits: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"aqua"}]

execute if score @s vote matches 1 run tellraw @s ["",{"text":"Link 1: ","color":"green","bold":true},{"text":"minecraft-server-list.com","clickEvent":{"action":"open_url","value":"https://minecraft-server-list.com/server/445164/vote/"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}},"color":"aqua","underlined":true}]
execute if score @s vote matches 1 run tellraw @s ["",{"text":"Link 2: ","color":"green","bold":true},{"text":"minecraftservers.org","clickEvent":{"action":"open_url","value":"https://minecraftservers.org/vote/562059"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}},"color":"aqua","underlined":true}]
execute if score @s vote matches 1 run tellraw @s ["",{"text":"Link 3: ","color":"green","bold":true},{"text":"minecraft-mp.com","clickEvent":{"action":"open_url","value":"https://minecraft-mp.com/server/232030/vote/"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}},"color":"aqua","underlined":true}]
execute if score @s vote matches 1 run tellraw @s ["",{"text":"Link 4: ","color":"green","bold":true},{"text":"topg.org","clickEvent":{"action":"open_url","value":"https://topg.org/Minecraft/in-519676"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}},"color":"aqua","underlined":true}]

scoreboard players reset @s vote
scoreboard players enable @s vote
