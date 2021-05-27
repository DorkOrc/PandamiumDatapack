execute store success score <donator_team> variable if entity @s[team=donator]

execute if score <donator_team> variable matches 0 run team join donator

execute if score <donator_team> variable matches 1 if score @s votes matches 125.. if score @s playtime_ticks matches 9000000.. run team join elder+
execute if score <donator_team> variable matches 1 if score @s votes matches 500.. if score @s playtime_ticks matches 36000000.. run team join veteran+
execute if score <donator_team> variable matches 1 if score @s votes matches 2500.. if score @s playtime_ticks matches 180000000.. run team join elite+

scoreboard players add <donator_team> variable 1
execute if score <donator_team> variable matches 2 run scoreboard players set <donator_team> variable 0