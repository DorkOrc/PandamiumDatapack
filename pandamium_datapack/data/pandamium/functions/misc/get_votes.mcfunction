scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s vote_credits 0

tellraw @p[tag=running_trigger] [{"text":"======== ","color":"yellow"},{"text":"Votes","bold":true}," ========"]
tellraw @p[tag=running_trigger] ["",{"text":"Player: ","bold":true,"color":"yellow"},{"selector":"@s"}]
tellraw @p[tag=running_trigger] ["",[{"text":"Votes: ","color":"gold"},{"score":{"name":"@s","objective":"votes"},"bold":true,"color":"yellow"}],"\n",[{"text":"Monthly Votes: ","color":"gold"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true,"color":"yellow"}],"\n",[{"text":"Vote Credits: ","color":"gold"},{"score":{"name":"@s","objective":"vote_credits"},"bold":true,"color":"yellow"}]]
tellraw @p[tag=running_trigger] {"text":"=======================","color":"yellow"}
