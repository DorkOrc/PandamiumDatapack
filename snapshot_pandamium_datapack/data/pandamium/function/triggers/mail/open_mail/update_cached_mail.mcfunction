# arguments: id, mail_id

$execute if data storage pandamium:cache online_players[{id:$(id)}].mail.inbox[{mail_id:$(mail_id)}] run data modify storage pandamium:cache online_players[{id:$(id)}].mail.inbox[{mail_id:$(mail_id)}].unread set value 0b
