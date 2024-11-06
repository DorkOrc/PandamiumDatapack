execute unless score @s voting_summary_buffer matches 1.. run playsound block.note_block.bell master @s ~ ~ ~ 1 1.334840 1
playsound block.note_block.bell master @s[scores={voting_summary_buffer=1..1200}] ~ ~ ~ 1 1.414214 1
playsound block.note_block.bell master @s[scores={voting_summary_buffer=1201..2400}] ~ ~ ~ 1 1.498307 1
playsound block.note_block.bell master @s[scores={voting_summary_buffer=2401..3600}] ~ ~ ~ 1 1.681793 1
playsound block.note_block.bell master @s[scores={voting_summary_buffer=3601..}] ~ ~ ~ 1 1.781797 1

function pandamium:player/update_tablist_value

scoreboard players set @s[scores={voting_summary_buffer=3601..}] voting_summary_buffer 0
scoreboard players set @s[scores={voting_summary_buffer=2401..3600}] voting_summary_buffer 4800
scoreboard players set @s[scores={voting_summary_buffer=1201..2400}] voting_summary_buffer 3600
scoreboard players set @s[scores={voting_summary_buffer=1..1200}] voting_summary_buffer 2400
execute unless score @s voting_summary_buffer matches 0.. run scoreboard players set @s voting_summary_buffer 1200
schedule function pandamium:impl/vote/every_tick_until_buffer_ends 1t
