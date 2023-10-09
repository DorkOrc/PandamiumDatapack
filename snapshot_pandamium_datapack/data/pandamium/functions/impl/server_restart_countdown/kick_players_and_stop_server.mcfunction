data remove storage pandamium:global restart_reason
scoreboard players reset <seconds_until_restart> global

data modify entity @s CustomName set from storage pandamium:global restart_kick_message
kill @s

kick @a @s
stop
