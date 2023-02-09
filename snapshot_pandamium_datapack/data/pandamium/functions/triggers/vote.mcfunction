tag @s add source

execute unless score @s staff_perms matches 1.. run scoreboard players set @s vote 1
execute if score @s vote matches 2.. as @a if score @s id = @p[tag=source] vote run function pandamium:misc/print_votes

scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s vote_credits 0

execute if score @s vote matches 1 run tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Voting","bold":true}," ========",{"text":"\nSupport Pandamium by voting here:","bold":true}]

execute if score @s vote matches 1 run tellraw @s [" ",{"text":"Link 1: ","color":"green"},{"text":"minecraft-server-list.com","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraft-server-list.com/server/445164/vote/"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraft-server-list.com","bold":true}]}}]
execute if score @s vote matches 1 run tellraw @s [" ",{"text":"Link 2: ","color":"green"},{"text":"minecraftservers.org","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraftservers.org/vote/562059"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraftservers.org","bold":true}]}}," ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","value":"This website only allows you to\nvote for one server per day, so\nyou can't vote for both servers\nlike with the other links."}}]
execute if score @s vote matches 1 run tellraw @s [" ",{"text":"Link 3: ","color":"green"},{"text":"topminecraftservers.org","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"http://topminecraftservers.org/vote/29717"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"topminecraftservers.com","bold":true}]}}]
execute if score @s vote matches 1 run tellraw @s [" ",{"text":"Link 4: ","color":"green"},{"text":"minecraft.global","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraft.global/server/172/vote"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraft.global","bold":true}]}}]

execute if score @s vote matches 1 if score @s votes matches 0 run tellraw @s [{"text":"\nYou are yet to vote! Open any of the above links and enter your ","color":"gray"},{"text":"exact","bold":true}," username. To check that your vote has been counted, you can wait for the message to appear in chat or re-run this trigger."]
execute if score @s vote matches 1 if score @s votes matches 1.. run tellraw @s [{"text":"\n","color":"aqua"},{"text":"Votes: ","color":"green"},{"score":{"name":"@s","objective":"votes"},"bold":true},{"text":"\nMonthly Votes: ","color":"green"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true},{"text":"\nVote Credits: ","color":"green"},{"score":{"name":"@s","objective":"vote_credits"},"bold":true}]

execute if score @s vote matches 1 run tellraw @s {"text":"========================","color":"aqua"}

tag @a remove target
tag @s remove source
scoreboard players reset @s vote
scoreboard players enable @s vote
