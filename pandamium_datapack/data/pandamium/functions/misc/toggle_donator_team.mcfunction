execute store success score <donator_team> variable if entity @s[team=donator]

execute if score <donator_team> variable matches 0 run team join donator

execute if score <donator_team> variable matches 1 run team leave @s
execute if score <donator_team> variable matches 1 run function pandamium:misc/update_teams

execute store success score <donator_team> variable unless score <donator_team> variable matches 1
