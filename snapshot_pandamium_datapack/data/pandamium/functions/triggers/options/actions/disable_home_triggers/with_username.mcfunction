# arguments: username

$data modify storage pandamium:cache online_players[{username:$(username)}].triggers[{trigger:"home"}].disabled set value 1b

data modify storage pandamium:queue entries append value {action:"reset_dynamic_triggers.per_trigger",target:"_",triggers:[]}
data modify storage pandamium:queue entries[-1].target set from storage pandamium:temp username
$data modify storage pandamium:queue entries[-1].triggers append from storage pandamium:cache online_players[{username:"$(username)"}].triggers[{trigger:"home"}].alias
