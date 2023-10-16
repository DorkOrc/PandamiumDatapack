tellraw @s[team=guest] [{"text":"Run ","color":"gray"},{"text":"/trigger rewards_shop","color":"aqua"}," to spend your reward credits!"]
playsound block.note_block.bell master @s ~ ~ ~ 1 1.335 1

function pandamium:player/update_tablist_value

scoreboard players set @s[scores={voting_summary_buffer=2401..}] voting_summary_buffer 0
scoreboard players set @s[scores={voting_summary_buffer=1201..2400}] voting_summary_buffer 3600
scoreboard players set @s[scores={voting_summary_buffer=1..1200}] voting_summary_buffer 2400
execute unless score @s voting_summary_buffer matches 0.. run scoreboard players set @s voting_summary_buffer 1200
schedule function pandamium:impl/vote/every_tick_until_buffer_ends 1t
