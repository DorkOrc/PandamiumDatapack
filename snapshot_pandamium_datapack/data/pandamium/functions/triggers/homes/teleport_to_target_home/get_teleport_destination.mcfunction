$scoreboard players operation <tp_x> variable = @s home_$(home)_x
$scoreboard players operation <tp_y> variable = @s home_$(home)_y
$scoreboard players operation <tp_z> variable = @s home_$(home)_z
$scoreboard players operation <tp_d> variable = @s home_$(home)_d

$tellraw @a[tag=source,limit=1] [{"text":"","color":"green"},{"text":"[Homes]","color":"blue"}," Teleported to ",{"selector":"@s"},"'s ",{"text":"Home $(home)","color":"aqua","bold":true}," in spectator mode!"]
