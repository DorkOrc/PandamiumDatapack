# arguments: id, mail_id

$execute if data storage pandamium:cache online_players[{id:$(id)}].mail.inbox[{mail_id:$(mail_id)}] run data modify storage pandamium:cache online_players[{id:$(id)}].mail.inbox[{mail_id:$(mail_id)}] merge value {has_unclaimed_items:0b,total_unclaimed_items:0b}
