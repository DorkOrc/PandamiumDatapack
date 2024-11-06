scoreboard players remove @a[scores={voting_summary_buffer=1..}] voting_summary_buffer 1

scoreboard players set @a[scores={voting_summary_buffer=1200}] voting_summary_buffer 0
scoreboard players set @a[scores={voting_summary_buffer=2400}] voting_summary_buffer 0
scoreboard players set @a[scores={voting_summary_buffer=3600}] voting_summary_buffer 0
tellraw @a[scores={voting_summary_buffer=..0}] [{"text":"Thank you for voting for our server! You now have ","color":"gray"},{"score":{"name":"*","objective":"votes"},"color":"aqua"}," votes, ",{"score":{"name":"*","objective":"monthly_votes"},"color":"aqua"}," votes this month, and ",{"score":{"name":"*","objective":"reward_credits"},"color":"aqua"}," reward credits."]
tellraw @a[scores={voting_summary_buffer=..0,gameplay_rank=0}] [{"text":"Run ","color":"gray","hoverEvent":{"action":"show_text","contents":{"text":"Click to open the Rewards Shop","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger rewards_shop"}},{"text":"/trigger rewards_shop","color":"aqua"}," to spend your reward credits!"]

scoreboard players reset @a[scores={voting_summary_buffer=..0}] voting_summary_buffer
execute if entity @a[scores={voting_summary_buffer=1..},limit=1] run schedule function pandamium:impl/vote/every_tick_until_buffer_ends 1t
