# arguments: message

scoreboard players set <success> variable 0
$tellraw @s {"color":"red","extra":[$(message)],"text":""}
data modify storage pandamium:temp error_message set value ""
