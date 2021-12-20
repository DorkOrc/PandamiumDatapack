tag @s add running_trigger

execute unless score @s staff_perms matches 1.. run scoreboard players set @s vote 1
execute if score @s vote matches 2.. as @a if score @s id = @p[tag=running_trigger] vote run function pandamium:misc/print_votes

scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s vote_credits 0

execute if score @s vote matches 1 run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Voting","bold":true}," ========",{"text":"\nSupport Pandamium by voting here:"}]

execute if score @s vote matches 1 run tellraw @s ["",{"text":"Link 1: ","color":"green","bold":true},{"text":"minecraft-server-list.com","clickEvent":{"action":"open_url","value":"https://minecraft-server-list.com/server/445164/vote/"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to visit ","color":"blue"},{"text":"minecraft-server-list.com","bold":true}]},"color":"blue","underlined":true}]
execute if score @s vote matches 1 run tellraw @s ["",{"text":"Link 2: ","color":"green","bold":true},{"text":"minecraftservers.org","clickEvent":{"action":"open_url","value":"https://minecraftservers.org/vote/562059"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to visit ","color":"blue"},{"text":"minecraftservers.org","bold":true}]},"color":"blue","underlined":true}]
execute if score @s vote matches 1 run tellraw @s ["",{"text":"Link 3: ","color":"green","bold":true},{"text":"minecraft-mp.com","clickEvent":{"action":"open_url","value":"https://minecraft-mp.com/server/232030/vote/"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to visit ","color":"blue"},{"text":"minecraft-mp.com","bold":true}]},"color":"blue","underlined":true}]
execute if score @s vote matches 1 run tellraw @s ["",{"text":"Link 4: ","color":"green","bold":true},{"text":"topg.org","clickEvent":{"action":"open_url","value":"https://topg.org/Minecraft/in-519676"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to visit ","color":"blue"},{"text":"topg.org","bold":true}]},"color":"blue","underlined":true}]

execute if score @s vote matches 1 if score @s votes matches 0 run tellraw @s [{"text":"\nYou are yet to vote! Open any of the above links and enter your ","color":"gray"},{"text":"exact","bold":true}," username. To check that your vote has been counted, you can wait for the message to appear in chat or re-run this trigger."]
execute if score @s vote matches 1 if score @s votes matches 1.. run tellraw @s [{"text":"\n","color":"aqua"},{"text":"Votes: ","color":"green"},{"score":{"name":"@s","objective":"votes"},"bold":true},{"text":"\nMonthly Votes: ","color":"green"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true},{"text":"\nVote Credits: ","color":"green"},{"score":{"name":"@s","objective":"vote_credits"},"bold":true}]

execute if score @s vote matches 1 run tellraw @s {"text":"========================","color":"aqua"}

tag @s remove running_trigger
scoreboard players reset @s vote
scoreboard players enable @s vote
