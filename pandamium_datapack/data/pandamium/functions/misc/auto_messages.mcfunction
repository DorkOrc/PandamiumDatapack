tag @a[scores={hide_auto_msgs=1,gameplay_perms=3..}] add hide_auto_msgs

execute if score <auto_message> variable matches 0 run tellraw @a[tag=!hide_auto_msgs] [{"text":"","color":"green","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Join the Discord Server!","color":"aqua"}}},{"text":"[Info] ","color":"blue"},{"text":"Click here","color":"aqua"}," to join our official ",{"text":"Discord","color":"aqua"}," server and always stay up to date: ",{"text":"discord.pandamium.eu","color":"aqua"}]

execute if score <auto_message> variable matches 1 run tellraw @a[tag=!hide_auto_msgs] [{"text":"","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger vote"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Vote for Pandamium!","color":"aqua"}}},{"text":"[Info] ","color":"blue"},"Do ",{"text":"/trigger vote","color":"yellow"}," to ",{"text":"get rewards","color":"aqua"},", ",{"text":"rank up","color":"aqua"}," and ",{"text":"support the server","color":"aqua"},"!"]

execute if score <auto_message> variable matches 2 run tellraw @a[tag=!hide_auto_msgs] [{"text":"","color":"green","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":{"text":"Click to Join the Discord Server!","color":"aqua"}}},{"text":"[Info] ","color":"blue"},"",{"text":"Donate","color":"aqua"}," to get access to ",{"text":"many exclusive perks","color":"aqua"}," and ",{"text":"support Pandamium","color":"aqua"},"! Check out our ",{"text":"Discord server","color":"aqua"}," for more info."]

tag @a remove hide_auto_msgs

scoreboard players add <auto_message> variable 1
execute if score <auto_message> variable matches 3.. run scoreboard players set <auto_message> variable 0

schedule function pandamium:misc/auto_messages 180s
