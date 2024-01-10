scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s vote_credits 0

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Voting","bold":true}," ========",{"text":"\nSupport Pandamium by voting here:","bold":true}]

tellraw @s [" ",{"text":"Link 1: ","color":"green"},{"text":"minecraft-server-list.com","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraft-server-list.com/server/445164/vote/"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraft-server-list.com","bold":true}]}}]
tellraw @s [" ",{"text":"Link 2: ","color":"green"},{"text":"minecraftservers.org","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraftservers.org/vote/562059"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraftservers.org","bold":true}]}}]
tellraw @s [" ",{"text":"Link 3: ","color":"green"},{"text":"topminecraftservers.org","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"http://topminecraftservers.org/vote/29717"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"topminecraftservers.com","bold":true}]}}]
tellraw @s [" ",{"text":"Link 4: ","color":"green"},{"text":"minecraft.global","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraft.global/servers/b559672e-7906-4d17-858b-3c630000a152/vote"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraft.global","bold":true}]}}]

tellraw @s ["\n ",{"text":"[Open All Links]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to open all 4 voting links in your default browser","color":"dark_aqua"},{"text":"\n\nIt will open an article on our website which will then automatically open all 4 pages in separate tabs. If your browser blocks pop-ups, you can enable them for that page or press the yellowy-orange button manually.","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://www.pandamium.com/article/votes/snapshot"}}]

execute if score @s votes matches 0 run tellraw @s [{"text":"\nYou are yet to vote! Open any of the above links and enter your ","color":"gray"},{"text":"exact","bold":true}," username. To check that your vote has been counted, you can wait for the message to appear in chat or re-run this trigger."]
execute if score @s votes matches 1.. run tellraw @s [{"text":"\n","color":"aqua"},{"text":"Votes: ","color":"green"},{"score":{"name":"@s","objective":"votes"},"bold":true},{"text":"\nVotes This Month: ","color":"green"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true},{"text":"\nVotes This Year: ","color":"green"},{"score":{"name":"@s","objective":"yearly_votes"},"bold":true},{"text":"\nReward Credits: ","color":"green"},{"score":{"name":"@s","objective":"vote_credits"},"bold":true}]

tellraw @s {"text":"========================","color":"aqua"}
