#{
#	action: "set_sign_font",
#	side: "front"|"back",
#	index: INT(0..3),
#	x: INT,
#	y: INT,
#	z: INT,
#	dimension: STRING,
#	source: INT,
#	lines_changed: INT,
#	style: INT
#}

execute if data storage pandamium:queue actions_ran."set_sign_font" run return run function pandamium:impl/queue/utils/continue_pending

$execute in $(dimension) unless loaded $(x) $(y) $(z) run return run tellraw @a[scores={id=$(source)},limit=1] [{"text":"[Sign Font]","color":"dark_red"},{"text":" Sign was unloaded!","color":"red"}]

# process current index
$execute in $(dimension) run data modify storage pandamium:temp text set from block $(x) $(y) $(z) $(side)_text.messages[$(index)]

execute store result score <style> variable run data get storage pandamium:queue selected.entry.style
$scoreboard players set @a[scores={id=$(source)},limit=1] sign_font -1 
$execute as @a[scores={id=$(source)},limit=1] in pandamium:staff_world run function pandamium:impl/font/apply_style/main
$scoreboard players reset @a[scores={id=$(source)},limit=1] sign_font
$execute store success score <text_changed> variable in $(dimension) run data modify block $(x) $(y) $(z) $(side)_text.messages[$(index)] set from storage pandamium:temp text

execute store result score <lines_changed> variable run data get storage pandamium:queue selected.entry.lines_changed
execute if score <text_changed> variable matches 1 store result storage pandamium:queue selected.entry.lines_changed int 1 run scoreboard players add <lines_changed> variable 1

# continue
execute store result score <index> variable run data get storage pandamium:queue selected.entry.index
execute store result storage pandamium:queue selected.entry.index int 1 store result storage pandamium:queue selected.entry.meta.value int 1 run scoreboard players add <index> variable 1
execute if score <index> variable matches 1..3 run return run function pandamium:impl/queue/utils/continue

# end
$execute if score <lines_changed> variable matches 0 run return run tellraw @a[scores={id=$(source)},limit=1] [{"text":"[Sign Font]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]
$execute if score <lines_changed> variable matches 1.. run playsound ui.cartography_table.take_result master @a[scores={id=$(source)},limit=1]
$execute if score <lines_changed> variable matches 1.. run tellraw @a[scores={id=$(source)},limit=1] [{"text":"","color":"green"},{"text":"[Sign Font]","color":"dark_green"}," Updated the text on the sign at $(x) $(y) $(z)!"]
