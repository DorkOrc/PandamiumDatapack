execute if score @s pose matches -71 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Arms","color":"aqua"},"!"]
execute if score @s pose matches -72 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Base Plate","color":"aqua"},"!"]
execute if score @s pose matches -73 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Gravity","color":"aqua"},"!"]
execute if score @s pose matches -74 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Small","color":"aqua"},"!"]
execute if score @s pose matches -75 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Name Visibility","color":"aqua"},"!"]

execute if score @s pose matches -76 if score <can_toggle_invisible> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You can only make armour stands invisible if they have items on them!","color":"red"}]
execute if score @s pose matches -76 if score <can_toggle_invisible> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Toggled ",{"text":"Invisible","color":"aqua"},"!"]

execute if score <do_pose> variable matches 1 if score <has_edited> variable matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Changed","color":"aqua"},{"text":" Pose!","color":"green"}]
execute if score <do_pose> variable matches 1 if score <has_edited> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

execute if score @s pose matches -64 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Mirrored ","color":"aqua"},{"text":"Pose!","color":"green"}]

execute if score @s pose matches -65 if score <has_edited> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped the nearest armour stand's ",{"text":"head","color":"aqua"}," slot and your selected item!"]
execute if score @s pose matches -66 if score <has_edited> variable matches 1 run tellraw @s [{"text":"","color":"green"},{"text":"[Pose]","color":"dark_green"}," Swapped the nearest armour stand's ",{"text":"offhand","color":"aqua"}," slot and your selected item!"]
execute if score @s pose matches -66..-65 if score <has_edited> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]

execute if score @s pose matches -129 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Locked ","color":"aqua"},{"text":"Pose!","color":"green"}]
execute if score @s pose matches -130 if score <has_edited> variable matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_green"},{"text":" Reset ","color":"aqua"},{"text":"Pose!","color":"green"}]
execute if score @s pose matches -130 if score <has_edited> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Nothing changed!","color":"red"}]
