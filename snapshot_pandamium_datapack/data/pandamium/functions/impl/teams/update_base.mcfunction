# arguments: username, color, prefix, id, hover_event

$team modify player.$(username) color $(color)
$team modify player.$(username) prefix [{"text":"","insertion":"$(id)","hoverEvent":{"action":"show_text","contents":$(hover_event)}},$(prefix)]
