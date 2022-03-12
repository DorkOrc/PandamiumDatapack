give @s[scores={voteReward=1,voteCredits=1..}] diamond 1
give @s[scores={voteReward=2,voteCredits=1..}] golden_apple 3
give @s[scores={voteReward=3,voteCredits=1..}] experience_bottle 8
give @s[scores={voteReward=4,voteCredits=15..}] minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:mending",lvl:1}]} 1

scoreboard players remove @s[scores={voteReward=4,voteCredits=15..}] voteCredits 15
scoreboard players remove @s[scores={voteReward=1..3,voteCredits=1..}] voteCredits 1