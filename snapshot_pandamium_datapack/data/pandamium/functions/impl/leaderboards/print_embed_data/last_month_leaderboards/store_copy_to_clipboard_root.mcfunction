# arguments: output

$data modify storage pandamium:leaderboards previous_month_data.copy_to_clipboard_root set value "{\"clickEvent\":{\"action\":\"copy_to_clipboard\",\"value\":\"$(output)\"},\"text\":\"\"}"
