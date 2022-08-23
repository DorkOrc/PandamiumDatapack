execute as @a unless score @s gameplay_perms matches 3.. run scoreboard players set @s hide_auto_messages 0
scoreboard players add @a hide_auto_messages 0

execute if score <next_auto_message> global matches 0 run tellraw @a[scores={hide_auto_messages=0}] [{"text":"","color":"green","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]}},{"text":"[Info] ","color":"blue"},{"text":"Click here","color":"aqua"}," to join our official ",{"text":"Discord","color":"#5865F2","bold":true}," server and always ",{"text":"stay up to date","color":"aqua"}," with announcements and changes!"]
execute if score <next_auto_message> global matches 1 run tellraw @a[scores={hide_auto_messages=0}] [{"text":"","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger vote"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"aqua"},{"text":"Vote for Pandamium","bold":true}]}},{"text":"[Info] ","color":"blue"},"Run ",{"text":"/trigger vote","color":"yellow"}," to ",{"text":"get rewards","color":"aqua"},", ",{"text":"rank up","color":"aqua"}," and ",{"text":"support the server","color":"aqua"},"!"]
execute if score <next_auto_message> global matches 2 run tellraw @a[scores={hide_auto_messages=0}] [{"text":"","color":"green","clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]}},{"text":"[Info] ","color":"blue"},{"text":"Donate","color":"#FF424D","underlined":true}," to get access to ",{"text":"many exclusive perks","color":"aqua"}," and ",{"text":"support Pandamium","color":"aqua"},"! Check out our ",{"text":"Discord","color":"#5865F2","bold":true}," for more info."]
execute if score <next_auto_message> global matches 3 run tellraw @a[scores={hide_auto_messages=0}] [{"text":"","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger options"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to open the ","color":"aqua"},{"text":"Options","bold":true}," menu"]}},{"text":"[Info] ","color":"blue"},"Don't like ",{"text":"\"Keep-Inventory\"","color":"aqua"}," being enabled by default? Toggle it off in the ",{"text":"options menu","color":"aqua"}," by running ",{"text":"/trigger options","color":"yellow"},"!"]

scoreboard players reset @a[scores={hide_auto_messages=0}] hide_auto_messages

scoreboard players add <next_auto_message> global 1
execute unless score <next_auto_message> global matches 0..3 run scoreboard players set <next_auto_message> global 0

schedule function pandamium:misc/auto_messages 300s
