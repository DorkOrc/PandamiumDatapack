# arguments: id, tablist_sort_index, team_color, (...)

$team modify player.sort-$(tablist_sort_index).id-$(id) color $(team_color)
$team modify player.sort-$(tablist_sort_index).id-$(id) prefix {storage:"pandamium:local",nbt:'functions."pandamium:impl/teams/*".team_prefix',interpret:true}
