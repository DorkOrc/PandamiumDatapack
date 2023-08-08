#execute if score @s hidden matches 1.. run return run function pandamium:impl/ranks/update_team/join {suffix: "_hidden"}
#execute if score @s idle.time matches 1..1073741823 unless score @s disable_idle_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_idle_indicator=2}] run return run function pandamium:impl/ranks/update_team/join {suffix: "_idle"}
#execute if score @s idle.time matches 1073741824.. run return run function pandamium:impl/ranks/update_team/join {suffix: "_afk"}
#function pandamium:impl/ranks/update_team/join {suffix: ""}

# due to MC-?????, cannot use `return run function ...`, so used temporary extra logic (below)
execute if score @s hidden matches 1.. run function pandamium:impl/ranks/update_team/join {suffix: "_hidden"}
execute unless score @s hidden matches 1.. if score @s idle.time matches 1..1073741823 unless score @s disable_idle_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_idle_indicator=2}] run function pandamium:impl/ranks/update_team/join {suffix: "_idle"}
execute unless score @s hidden matches 1.. if score @s idle.time matches 1073741824.. run function pandamium:impl/ranks/update_team/join {suffix: "_afk"}
execute unless score @s hidden matches 1.. unless score @s idle.time matches 1.. run function pandamium:impl/ranks/update_team/join {suffix: ""}
