execute if score @s restart matches ..-1 run kick @a [AutoRestart] The server is being restarted to increase performance. It will be back in 1-2 minutes!
execute if score @s restart matches ..-1 run stop

scoreboard players reset @s restart
scoreboard players enable @s restart
