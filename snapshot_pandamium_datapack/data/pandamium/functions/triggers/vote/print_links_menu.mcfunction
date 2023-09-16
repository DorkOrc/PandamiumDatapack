scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s vote_credits 0

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Voting","bold":true}," ========",{"text":"\nSupport Pandamium by voting here:","bold":true}]

tellraw @s [" ",{"text":"Link 1: ","color":"green"},{"text":"minecraft-server-list.com","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraft-server-list.com/server/445164/vote/"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraft-server-list.com","bold":true}]}}]
tellraw @s [" ",{"text":"Link 2: ","color":"green"},{"text":"minecraftservers.org","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraftservers.org/vote/562059"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraftservers.org","bold":true}]}}]
tellraw @s [" ",{"text":"Link 3: ","color":"green"},{"text":"topminecraftservers.org","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"http://topminecraftservers.org/vote/29717"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"topminecraftservers.com","bold":true}]}}]
tellraw @s [" ",{"text":"Link 4: ","color":"green"},{"text":"minecraft.global","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraft.global/server/172/vote"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to vote through\n","color":"blue"},{"text":"minecraft.global","bold":true}]}}]

execute if score @s votes matches 0 run tellraw @s [{"text":"\nYou are yet to vote! Open any of the above links and enter your ","color":"gray"},{"text":"exact","bold":true}," username. To check that your vote has been counted, you can wait for the message to appear in chat or re-run this trigger."]
execute if score @s votes matches 1.. run tellraw @s [{"text":"\n","color":"aqua"},{"text":"Votes: ","color":"green"},{"score":{"name":"@s","objective":"votes"},"bold":true},{"text":"\nMonthly Votes: ","color":"green"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true},{"text":"\nReward Credits: ","color":"green"},{"score":{"name":"@s","objective":"vote_credits"},"bold":true}]

tellraw @s {"text":"========================","color":"aqua"}
