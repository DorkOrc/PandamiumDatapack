# Ran by external program

tellraw @s[team=guest] [{"text":"Run ","color":"gray"},{"text":"/trigger vote_shop","color":"aqua"}," to spend your vote credits!"]
playsound block.note_block.bell master @s ~ ~ ~ 1 1.335 1

function pandamium:misc/leaderboards/update_self/every_votes

scoreboard players set @s[scores={voting_summary_buffer=2401..}] voting_summary_buffer 0
scoreboard players set @s[scores={voting_summary_buffer=1201..2400}] voting_summary_buffer 3600
scoreboard players set @s[scores={voting_summary_buffer=1..1200}] voting_summary_buffer 2400
execute unless score @s voting_summary_buffer matches 0.. run scoreboard players set @s voting_summary_buffer 1200
schedule function pandamium:impl/vote/every_tick_until_buffer_ends 1t
