execute if score @s vote matches -101 run return run dialog clear @s

# menu
execute unless predicate pandamium:player/min_staff_perms/helper run scoreboard players set @s vote 1
execute if score @s vote matches ..1 run return run function pandamium:triggers/vote/menu

# inspect player
scoreboard players operation <id> variable = @s vote

scoreboard players add @a[limit=1,predicate=pandamium:matches_id] votes 0
scoreboard players add @a[limit=1,predicate=pandamium:matches_id] monthly_votes 0
scoreboard players add @a[limit=1,predicate=pandamium:matches_id] yearly_votes 0
scoreboard players add @a[limit=1,predicate=pandamium:matches_id] reward_credits 0

tellraw @s [{text:"======== ",color:"yellow"},{text:"Votes",bold:true}," ========",{text:"\nPlayer: ",bold:true},{selector:"@a[limit=1,predicate=pandamium:matches_id]"},{text:"\nVotes: ",color:"gold"},{score:{name:"@a[limit=1,predicate=pandamium:matches_id]",objective:"votes"},bold:true},{text:"\nVotes This Month: ",color:"gold"},{score:{name:"@a[limit=1,predicate=pandamium:matches_id]",objective:"monthly_votes"},bold:true},{text:"\nVotes This Year: ",color:"gold"},{score:{name:"@a[limit=1,predicate=pandamium:matches_id]",objective:"yearly_votes"},bold:true},{text:"\nReward Credits: ",color:"gold"},{score:{name:"@a[limit=1,predicate=pandamium:matches_id]",objective:"reward_credits"},bold:true},"\n======================="]

scoreboard players reset @a[limit=1,predicate=pandamium:matches_id,scores={votes=0}] votes
scoreboard players reset @a[limit=1,predicate=pandamium:matches_id,scores={monthly_votes=0}] monthly_votes
scoreboard players reset @a[limit=1,predicate=pandamium:matches_id,scores={yearly_votes=0}] yearly_votes
scoreboard players reset @a[limit=1,predicate=pandamium:matches_id,scores={reward_credits=0}] reward_credits
