scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s vote_credits 0

tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"yellow"},{"text":"Votes","bold":true}," ========",{"text":"\nPlayer: ","bold":true},{"selector":"@s"},{"text":"\nVotes: ","color":"gold"},{"score":{"name":"@s","objective":"votes"},"bold":true},{"text":"\nMonthly Votes: ","color":"gold"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true},{"text":"\nReward Credits: ","color":"gold"},{"score":{"name":"@s","objective":"vote_credits"},"bold":true},"\n======================="]
