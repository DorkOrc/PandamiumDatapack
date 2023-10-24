function pandamium:utils/database/players/load/self
data modify storage pandamium:temp home_number_prefix set value '""'

scoreboard players operation <min_rewarded_home> variable = @s available_homes
scoreboard players add <min_rewarded_home> variable 1
execute if score @s rewarded_homes matches 1.. run scoreboard players operation <min_rewarded_home> variable -= @s rewarded_homes

function pandamium:triggers/homes/print_menu/normal/entry {home: 1}
function pandamium:triggers/homes/print_menu/normal/entry {home: 2}
function pandamium:triggers/homes/print_menu/normal/entry {home: 3}
function pandamium:triggers/homes/print_menu/normal/entry {home: 4}
function pandamium:triggers/homes/print_menu/normal/entry {home: 5}
function pandamium:triggers/homes/print_menu/normal/entry {home: 6}
function pandamium:triggers/homes/print_menu/normal/entry {home: 7}
function pandamium:triggers/homes/print_menu/normal/entry {home: 8}
function pandamium:triggers/homes/print_menu/normal/entry {home: 9}
function pandamium:triggers/homes/print_menu/normal/entry {home: 10}
function pandamium:triggers/homes/print_menu/normal/entry {home: 11}
function pandamium:triggers/homes/print_menu/normal/entry {home: 12}
function pandamium:triggers/homes/print_menu/normal/entry {home: 13}
function pandamium:triggers/homes/print_menu/normal/entry {home: 14}
function pandamium:triggers/homes/print_menu/normal/entry {home: 15}
function pandamium:triggers/homes/print_menu/normal/entry {home: 16}
function pandamium:triggers/homes/print_menu/normal/entry {home: 17}
function pandamium:triggers/homes/print_menu/normal/entry {home: 18}
function pandamium:triggers/homes/print_menu/normal/entry {home: 19}
function pandamium:triggers/homes/print_menu/normal/entry {home: 20}
function pandamium:triggers/homes/print_menu/normal/entry {home: 21}
function pandamium:triggers/homes/print_menu/normal/entry {home: 22}
function pandamium:triggers/homes/print_menu/normal/entry {home: 23}
function pandamium:triggers/homes/print_menu/normal/entry {home: 24}
function pandamium:triggers/homes/print_menu/normal/entry {home: 25}
