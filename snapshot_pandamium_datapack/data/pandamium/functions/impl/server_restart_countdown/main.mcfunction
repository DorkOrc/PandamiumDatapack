tellraw @a[scores={online_ticks=21..}] [{"text":"[Warning]","color":"dark_red"},[{"text":" The server will close in ","color":"red"},{"text":"5 minutes","bold":true,"color":"yellow"},{"storage":"pandamium:global","nbt":"restart_reason","interpret":true},"!"]]
execute as @a[scores={online_ticks=21..}] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
scoreboard players set <seconds_until_restart> global 300
function pandamium:impl/server_restart_countdown/every_second_until_restart
