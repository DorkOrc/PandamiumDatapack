
scoreboard players add @s votes 0
tellraw @s [{"text":"Support Pandamium by Voting Here!","color":"aqua","bold":true}]
tellraw @s ["",{"text":"Votes:","color":"green"}," ",{"score":{"name":"@s","objective":"votes"},"color":"aqua"}]

tellraw @s ["",{"text":"Link 1: ","color":"green","bold":true},{"text":"minecraft-server-list.com","clickEvent":{"action":"open_url","value":"https://minecraft-server-list.com/server/445164/vote/"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}},"color":"aqua","underlined":true}]
tellraw @s ["",{"text":"Link 2: ","color":"green","bold":true},{"text":"minecraftservers.org","clickEvent":{"action":"open_url","value":"https://minecraftservers.org/vote/562059"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}},"color":"aqua","underlined":true}]
tellraw @s ["",{"text":"Link 3: ","color":"green","bold":true},{"text":"minecraft-mp.com","clickEvent":{"action":"open_url","value":"https://minecraft-mp.com/server/232030/vote/"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}},"color":"aqua","underlined":true}]
tellraw @s ["",{"text":"Link 4: ","color":"green","bold":true},{"text":"topg.org","clickEvent":{"action":"open_url","value":"https://topg.org/Minecraft/in-519676"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}},"color":"aqua","underlined":true}]

scoreboard players reset @s vote
scoreboard players enable @s vote
