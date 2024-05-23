# arguments: id, tablist_sort_index, username

$team remove player.sort-$(tablist_sort_index).id-$(id)
$scoreboard players reset $(username) tablist_sort_index

$team leave $(username)
