# arguments: id, tablist_sort_index, color, prefix, hover_event

$team modify player.sort-$(tablist_sort_index).id-$(id) color $(color)
$team modify player.sort-$(tablist_sort_index).id-$(id) prefix [{"text":"","insertion":"$(id)","hoverEvent":{"action":"show_text","contents":$(hover_event)}},$(prefix)]
