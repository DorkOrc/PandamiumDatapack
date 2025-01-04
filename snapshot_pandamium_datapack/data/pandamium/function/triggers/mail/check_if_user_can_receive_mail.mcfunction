# arguments: username

$execute store success score <joined_since_mail_added> variable if score $(username) last_joined.datetime matches 780926400..
execute if score <joined_since_mail_added> variable matches 0 run return -1
$execute if score $(username) optn.disable_receiving_mail matches 1 run return -2
$execute if score @s gameplay_rank matches 0 if score $(username) optn.disable_receiving_mail matches 2 run return -3

return 1
