function pandamium:utils/database/load_self

function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 1}

execute if score @s gameplay_perms matches 1.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 2}
execute unless score @s gameplay_perms matches 1.. if data storage pandamium.db:players selected.entry.data.homes.2 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 2}

execute if score @s gameplay_perms matches 2.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 3}
execute unless score @s gameplay_perms matches 2.. if data storage pandamium.db:players selected.entry.data.homes.3 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 3}

execute if score @s gameplay_perms matches 3.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 4}
execute unless score @s gameplay_perms matches 3.. if data storage pandamium.db:players selected.entry.data.homes.4 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 4}

execute if score @s gameplay_perms matches 4.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 5}
execute unless score @s gameplay_perms matches 4.. if data storage pandamium.db:players selected.entry.data.homes.5 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 5}

execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 6}
execute unless score @s gameplay_perms matches 5.. if data storage pandamium.db:players selected.entry.data.homes.6 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 6}
execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 7}
execute unless score @s gameplay_perms matches 5.. if data storage pandamium.db:players selected.entry.data.homes.6 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 7}

execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 8}
execute unless score @s gameplay_perms matches 6.. if data storage pandamium.db:players selected.entry.data.homes.8 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 8}
execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 9}
execute unless score @s gameplay_perms matches 6.. if data storage pandamium.db:players selected.entry.data.homes.9 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 9}
execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/moderator/entry/accessible {home: 10}
execute unless score @s gameplay_perms matches 6.. if data storage pandamium.db:players selected.entry.data.homes.10 run function pandamium:triggers/homes/print_menu/moderator/entry/inaccessible {home: 10}
