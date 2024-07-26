execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Hide]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]

execute unless score @s hidden matches 1.. run return run function pandamium:triggers/hide/do_hide
function pandamium:triggers/hide/do_unhide

