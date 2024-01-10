scoreboard players add @s votes 0
scoreboard players add @s monthly_votes 0
scoreboard players add @s yearly_votes 0
scoreboard players add @s vote_credits 0

tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"yellow"},{"text":"Votes","bold":true}," ========",{"text":"\nPlayer: ","bold":true},{"selector":"@s"},{"text":"\nVotes: ","color":"gold"},{"score":{"name":"@s","objective":"votes"},"bold":true},{"text":"\nVotes This Month: ","color":"gold"},{"score":{"name":"@s","objective":"monthly_votes"},"bold":true},{"text":"\nVotes This Year: ","color":"gold"},{"score":{"name":"@s","objective":"yearly_votes"},"bold":true},{"text":"\nReward Credits: ","color":"gold"},{"score":{"name":"@s","objective":"vote_credits"},"bold":true},"\n======================="]

scoreboard players reset @s[scores={votes=0}] votes
scoreboard players reset @s[scores={monthly_votes=0}] monthly_votes
scoreboard players reset @s[scores={yearly_votes=0}] yearly_votes
scoreboard players reset @s[scores={vote_credits=0}] vote_credits
