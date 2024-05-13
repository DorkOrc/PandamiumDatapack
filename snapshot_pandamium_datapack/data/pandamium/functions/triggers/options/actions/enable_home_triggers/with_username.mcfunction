# arguments: username

$data remove storage pandamium:cache online_players[{username:"$(username)"}].triggers[{trigger:"home"}].disabled
$data remove storage pandamium:queue entries[{action:"reset_dynamic_triggers.per_trigger",target:"$(username)"}]
