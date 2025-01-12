scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s reward_credits 0

tellraw @s [{text:"======== ",color:"aqua"},{text:"Voting",bold:true},{text:" ========"},{text:"\nSupport Pandamium by voting here:",bold:true}]

tellraw @s [{text:" "},{text:"Link 1: ",color:"#7FFFDF"},{text:"[",color:"aqua",shadow_color:[0.0f,0.75f,0.75f,0.75f],extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'FindMCServer'",interpret:true},{text:"] "},{text:"(OFFICIAL)",bold:true,color:"aqua",font:"minecraft:uniform"}]}]
tellraw @s [{text:" "},{text:"Link 2: ",color:"green"},{text:"[",color:"blue",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'MCSL'",interpret:true},{text:"]"}]}]
tellraw @s [{text:" "},{text:"Link 3: ",color:"green"},{text:"[",color:"blue",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'MinecraftServers.org'",interpret:true},{text:"]"}]}]
tellraw @s [{text:" "},{text:"Link 4: ",color:"green"},{text:"[",color:"blue",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'TopMinecraftServers'",interpret:true},{text:"]"}]}]
tellraw @s [{text:" "},{text:"Link 5: ",color:"green"},{text:"[",color:"blue",extra:[{storage:"pandamium:dictionary",nbt:"votifier_service_titles.'minecraft.global'",interpret:true},{text:"]"}]}]

tellraw @s [{text:"\n "},{text:"[Open All Links]",color:"dark_aqua",hover_event:{action:"show_text",text:[{text:"Click to open all 5 voting links in your default browser",color:"dark_aqua"},{text:"\n\nIt will open an article on our website which will then automatically open all 5 pages in separate tabs. If your browser blocks pop-ups, you can enable them for that page or press the yellowy-orange button manually.",color:"gray"}]},click_event:{action:"open_url",url:"https://www.pandamium.com/article/votes/snapshot"}}]

data modify storage pandamium:temp display_streak set value ""
execute if score @s voting_streak.length_in_days matches 3.. run data modify storage pandamium:temp display_streak set value '{"text":" 🔥","extra":[{"score":{"name":"@s","objective":"voting_streak.length_in_days"},"bold":true}],"color":"#D4006F","shadow_color":[0.376,0,0.467,0.5]}'

execute if score @s votes matches 0 run tellraw @s [{text:"\nYou are yet to vote! Open any of the above links and enter your ",color:"gray"},{text:"exact",bold:true},{text:" username. To check that your vote has been counted, you can wait for the message to appear in chat or re-run this trigger."}]
execute if score @s votes matches 1.. run tellraw @s [{text:"\n",color:"aqua"},{text:"Votes: ",color:"green"},{score:{name:"@s",objective:"votes"},bold:true},{storage:"pandamium:temp",nbt:"display_streak",interpret:true,hover_event:{action:"show_text",text:{text:"You have voted for this many days in a row",color:"#D4006F"}}},{text:"\nVotes This Month: ",color:"green"},{score:{name:"@s",objective:"monthly_votes"},bold:true},{text:"\nVotes This Year: ",color:"green"},{score:{name:"@s",objective:"yearly_votes"},bold:true},{text:"\nReward Credits: ",color:"green"},{score:{name:"@s",objective:"reward_credits"},bold:true}]

tellraw @s {text:"========================",color:"aqua"}
