function pandamium:utils/database/load_self

# guest 1..2
function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 1}
function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 2}

# player 3
execute if score @s gameplay_perms matches 1.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 3}
execute unless score @s gameplay_perms matches 1.. if data storage pandamium.db:players selected.entry.data.homes.3 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 3}

# member 4..5
execute if score @s gameplay_perms matches 2.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 4}
execute unless score @s gameplay_perms matches 2.. if data storage pandamium.db:players selected.entry.data.homes.4 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 4}

execute if score @s gameplay_perms matches 2.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 5}
execute unless score @s gameplay_perms matches 2.. if data storage pandamium.db:players selected.entry.data.homes.5 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 5}

# elder 6..10
execute if score @s gameplay_perms matches 3.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 6}
execute unless score @s gameplay_perms matches 3.. if data storage pandamium.db:players selected.entry.data.homes.6 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 6}

execute if score @s gameplay_perms matches 3.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 7}
execute unless score @s gameplay_perms matches 3.. if data storage pandamium.db:players selected.entry.data.homes.7 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 7}

execute if score @s gameplay_perms matches 3.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 8}
execute unless score @s gameplay_perms matches 3.. if data storage pandamium.db:players selected.entry.data.homes.8 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 8}

execute if score @s gameplay_perms matches 3.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 9}
execute unless score @s gameplay_perms matches 3.. if data storage pandamium.db:players selected.entry.data.homes.9 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 9}

execute if score @s gameplay_perms matches 3.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 10}
execute unless score @s gameplay_perms matches 3.. if data storage pandamium.db:players selected.entry.data.homes.10 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 10}

# veteran 11..15
execute if score @s gameplay_perms matches 4.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 11}
execute unless score @s gameplay_perms matches 4.. if data storage pandamium.db:players selected.entry.data.homes.11 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 11}

execute if score @s gameplay_perms matches 4.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 12}
execute unless score @s gameplay_perms matches 4.. if data storage pandamium.db:players selected.entry.data.homes.12 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 12}

execute if score @s gameplay_perms matches 4.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 13}
execute unless score @s gameplay_perms matches 4.. if data storage pandamium.db:players selected.entry.data.homes.13 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 13}

execute if score @s gameplay_perms matches 4.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 14}
execute unless score @s gameplay_perms matches 4.. if data storage pandamium.db:players selected.entry.data.homes.14 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 14}

execute if score @s gameplay_perms matches 4.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 15}
execute unless score @s gameplay_perms matches 4.. if data storage pandamium.db:players selected.entry.data.homes.15 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 15}

# 16..20
execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 16}
execute unless score @s gameplay_perms matches 5.. if data storage pandamium.db:players selected.entry.data.homes.16 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 16}

execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 17}
execute unless score @s gameplay_perms matches 5.. if data storage pandamium.db:players selected.entry.data.homes.17 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 17}

execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 18}
execute unless score @s gameplay_perms matches 5.. if data storage pandamium.db:players selected.entry.data.homes.18 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 18}

execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 19}
execute unless score @s gameplay_perms matches 5.. if data storage pandamium.db:players selected.entry.data.homes.19 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 19}

execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 20}
execute unless score @s gameplay_perms matches 5.. if data storage pandamium.db:players selected.entry.data.homes.20 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 20}

# 21..25
execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 21}
execute unless score @s gameplay_perms matches 6.. if data storage pandamium.db:players selected.entry.data.homes.21 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 21}

execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 22}
execute unless score @s gameplay_perms matches 6.. if data storage pandamium.db:players selected.entry.data.homes.22 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 22}

execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 23}
execute unless score @s gameplay_perms matches 6.. if data storage pandamium.db:players selected.entry.data.homes.23 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 23}

execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 24}
execute unless score @s gameplay_perms matches 6.. if data storage pandamium.db:players selected.entry.data.homes.24 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 24}

execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/normal/entry/accessible {home: 25}
execute unless score @s gameplay_perms matches 6.. if data storage pandamium.db:players selected.entry.data.homes.25 run function pandamium:triggers/homes/print_menu/normal/entry/inaccessible {home: 25}
