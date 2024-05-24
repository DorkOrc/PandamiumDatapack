# arguments: id, tablist_sort_index

$team add player.sort-$(tablist_sort_index).id-$(id)
$team join player.sort-$(tablist_sort_index).id-$(id) @s
$team modify player.sort-$(tablist_sort_index).id-$(id) seeFriendlyInvisibles false
