execute as @a unless score @s gameplay_perms matches 3.. run scoreboard players set @s hide_auto_msgs 0
scoreboard players add @a hide_auto_msgs 0

execute if score <auto_message> global matches 0 run tellraw @a[scores={hide_auto_msgs=0}] [{"text":"","color":"green","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]}},{"text":"[Info] ","color":"blue"},{"text":"Click here","color":"aqua"}," to join our official ",{"text":"Discord","color":"aqua"}," server and always stay up to date: ",{"text":"discord.pandamium.eu","color":"aqua"}]

execute if score <auto_message> global matches 1 run tellraw @a[scores={hide_auto_msgs=0}] [{"text":"","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger vote"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"aqua"},{"text":"Vote for Pandamium","bold":true}]}},{"text":"[Info] ","color":"blue"},"Do ",{"text":"/trigger vote","color":"yellow"}," to ",{"text":"get rewards","color":"aqua"},", ",{"text":"rank up","color":"aqua"}," and ",{"text":"support the server","color":"aqua"},"!"]

execute if score <auto_message> global matches 2 run tellraw @a[scores={hide_auto_msgs=0}] [{"text":"","color":"green","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]}},{"text":"[Info] ","color":"blue"},"",{"text":"Donate","color":"aqua"}," to get access to ",{"text":"many exclusive perks","color":"aqua"}," and ",{"text":"support Pandamium","color":"aqua"},"! Check out our ",{"text":"Discord server","color":"aqua"}," for more info."]

scoreboard players add <auto_message> global 1
execute if score <auto_message> global matches 3.. run scoreboard players set <auto_message> global 0

schedule function pandamium:misc/auto_messages 180s
