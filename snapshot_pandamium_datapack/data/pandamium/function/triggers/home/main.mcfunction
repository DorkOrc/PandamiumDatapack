execute store result score <restricted> variable run function pandamium:utils/triggers/check_forced_restriction {trigger:"home",name:"Homes"}
execute if score <restricted> variable matches 0 run function pandamium:triggers/home/logic

scoreboard players reset @s home
scoreboard players enable @s home
