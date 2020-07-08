function pandamium:on_join
function pandamium:misc/give_guidebook

#staff notification
execute as @a[scores={staff_perms=1..}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2

tellraw @a [{"text":"[Server]","color":"dark_blue"},{"text":" Welcome to the server ","color":"dark_aqua"},{"selector":"@s","color":"aqua"},{"text":"! Have fun!","color":"dark_aqua"}]

tellraw @s [{"text":"Read the guidebook to get started and join the official ","color":"dark_aqua"},{"text":"discord","color":"aqua"}," server for the full rules and announcements about the server!\nClick ",{"text":"[Here]","color":"aqua","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"}}," to join!"]
