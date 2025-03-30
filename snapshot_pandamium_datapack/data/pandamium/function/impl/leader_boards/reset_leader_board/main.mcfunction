# arguments: type

$data remove storage pandamium.leader_boards:data leader_boards.$(type).active
$scoreboard players set <leader_boards.leader_board.$(type).highest_value> global -2147483648
