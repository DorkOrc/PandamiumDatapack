# arguments: output

$data modify storage pandamium.leader_boards:data previous_month_data.copy_to_clipboard_root set value "{\"clickEvent\":{\"action\":\"copy_to_clipboard\",\"value\":\"$(output)\"},\"text\":\"\"}"
