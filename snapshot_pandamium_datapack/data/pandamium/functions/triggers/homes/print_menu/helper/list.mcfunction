function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 1}

execute if score @s gameplay_perms matches 1.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 2}
execute unless score @s gameplay_perms matches 1.. if score @s home_2_x = @s home_2_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 2}

execute if score @s gameplay_perms matches 2.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 3}
execute unless score @s gameplay_perms matches 2.. if score @s home_3_x = @s home_3_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 3}

execute if score @s gameplay_perms matches 3.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 4}
execute unless score @s gameplay_perms matches 3.. if score @s home_4_x = @s home_4_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 4}

execute if score @s gameplay_perms matches 4.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 5}
execute unless score @s gameplay_perms matches 4.. if score @s home_5_x = @s home_5_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 5}

execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 6}
execute unless score @s gameplay_perms matches 5.. if score @s home_6_x = @s home_6_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 6}
execute if score @s gameplay_perms matches 5.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 7}
execute unless score @s gameplay_perms matches 5.. if score @s home_7_x = @s home_7_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 7}

execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 8}
execute unless score @s gameplay_perms matches 6.. if score @s home_8_x = @s home_8_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 8}
execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 9}
execute unless score @s gameplay_perms matches 6.. if score @s home_9_x = @s home_9_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 9}
execute if score @s gameplay_perms matches 6.. run function pandamium:triggers/homes/print_menu/helper/entry/accessible {home: 10}
execute unless score @s gameplay_perms matches 6.. if score @s home_10_x = @s home_10_x run function pandamium:triggers/homes/print_menu/helper/entry/inaccessible {home: 10}
