# arguments: username, color, prefix, id

$team modify player.$(username) color $(color)
$team modify player.$(username) prefix [{"text":"","insertion":"$(id)"},$(prefix)]
