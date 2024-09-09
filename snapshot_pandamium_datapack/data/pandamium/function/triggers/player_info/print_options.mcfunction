tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Player Info","bold":true}," ========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"selector":"@a[tag=player_info.target,limit=1]"}," (",{"score":{"name":"@a[tag=player_info.target,limit=1]","objective":"id"},"bold":true},")",{"text":"\nOptions: ","bold":true,"color":"yellow"}]

execute unless score @s id matches 2.. run tellraw @a[tag=player_info.source,limit=1] [{"text":"Receive TPA Requests: ","color":"#C9C9C9"},{"text":"Impossible","color":"#E9E9E9","bold":true}]
execute if score @s id matches 2.. unless score @s disable_tpa_requests matches 1.. run tellraw @a[tag=player_info.source,limit=1] [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"All","color":"yellow","bold":true}]
execute if score @s id matches 2.. if score @s disable_tpa_requests matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"None","color":"yellow","bold":true}]
execute if score @s id matches 2.. if score @s disable_tpa_requests matches 2 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Receive TPA Requests: ","color":"aqua"},{"text":"All Except Guests","color":"yellow","bold":true}]

execute unless score @s disable_keep_inventory matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"On","color":"yellow","bold":true}]
execute if score @s disable_keep_inventory matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Keep-Inventory: ","color":"aqua"},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s optn.disable_phantom_spawning matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Phantom Spawning: ","color":"aqua"},{"text":"On","color":"yellow","bold":true}]
execute if score @s optn.disable_phantom_spawning matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Phantom Spawning: ","color":"aqua"},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s disable_attack_indicator matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Attack Indicator: ","color":"aqua"},{"text":"On","color":"yellow","bold":true}]
execute if score @s disable_attack_indicator matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Attack Indicator: ","color":"aqua"},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s hide_parkour_timer matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Show Parkour Timer: ","color":"aqua"},{"text":"On","color":"yellow","bold":true}]
execute if score @s hide_parkour_timer matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Show Parkour Timer: ","color":"aqua"},{"text":"Off","color":"yellow","bold":true}]

execute unless score @s sneak_to_sit matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Crouch Twice to Sit: ","color":"aqua"},{"text":"Off","color":"yellow","bold":true}]
execute if score @s sneak_to_sit matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Crouch Twice to Sit: ","color":"aqua"},{"text":"On","color":"yellow","bold":true}]

execute if score @s gameplay_perms matches 3.. unless score @s hide_auto_messages matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Chat Reminders: ","color":"dark_aqua"},{"text":"On","color":"yellow","bold":true}]
execute if score @s gameplay_perms matches 3.. if score @s hide_auto_messages matches 1 run tellraw @a[tag=player_info.source,limit=1] [{"text":"Chat Reminders: ","color":"dark_aqua"},{"text":"Off","color":"yellow","bold":true}]
execute unless score @s gameplay_perms matches 3.. run tellraw @a[tag=player_info.source,limit=1] [{"text":"Chat Reminders: ","color":"#C9C9C9"},{"text":"On","color":"#E9E9E9","bold":true}]

tellraw @s {"text":"=============================","color":"yellow"}
