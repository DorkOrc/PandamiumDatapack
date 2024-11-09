scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s reward_credits 0

tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Voting","bold":true}," ========",{"text":"\nSupport Pandamium by voting here:","bold":true}]

tellraw @s [" ",{"text":"Link 1: ","color":"#7FFFDF"},{"text":"[","color":"aqua","shadow_color":[0,0.75,0.75,0.75],"extra":[{"storage":"pandamium:dictionary","nbt":"votifier_service_titles.'FindMCServer'","interpret":true},"] ",{"text":"(OFFICIAL)","bold":true,"color":"aqua","font":"minecraft:uniform"}]}]
tellraw @s [" ",{"text":"Link 2: ","color":"green"},{"text":"[","color":"blue","extra":[{"storage":"pandamium:dictionary","nbt":"votifier_service_titles.'MCSL'","interpret":true},"]"]}]
tellraw @s [" ",{"text":"Link 3: ","color":"green"},{"text":"[","color":"blue","extra":[{"storage":"pandamium:dictionary","nbt":"votifier_service_titles.'MinecraftServers.org'","interpret":true},"]"]}]
tellraw @s [" ",{"text":"Link 4: ","color":"green"},{"text":"[","color":"blue","extra":[{"storage":"pandamium:dictionary","nbt":"votifier_service_titles.'TopMinecraftServers'","interpret":true},"]"]}]
tellraw @s [" ",{"text":"Link 5: ","color":"green"},{"text":"[","color":"blue","extra":[{"storage":"pandamium:dictionary","nbt":"votifier_service_titles.'minecraft.global'","interpret":true},"]"]}]

tellraw @s ["\n ",{"text":"[Open All Links]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to open all 5 voting links in your default browser","color":"dark_aqua"},{"text":"\n\nIt will open an article on our website which will then automatically open all 5 pages in separate tabs. If your browser blocks pop-ups, you can enable them for that page or press the yellowy-orange button manually.","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://www.pandamium.com/article/votes/snapshot"}}]

execute if score @s votes matches 0 run tellraw @s [{"text":"\nYou are yet to vote! Open any of the above links and enter your ","color":"gray"},{"text":"exact","bold":true}," username. To check that your vote has been counted, you can wait for the message to appear in chat or re-run this trigger."]
execute if score @s votes matches 1.. run tellraw @s [{"text":"\n","color":"aqua"},{"text":"Votes: ","color":"green"},{"score":{"name":"@s","objective":"votes"},"bold":true},{"text":"\nVotes This Month: ","color":"green"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true},{"text":"\nVotes This Year: ","color":"green"},{"score":{"name":"@s","objective":"yearly_votes"},"bold":true},{"text":"\nReward Credits: ","color":"green"},{"score":{"name":"@s","objective":"reward_credits"},"bold":true}]

tellraw @s {"text":"========================","color":"aqua"}
