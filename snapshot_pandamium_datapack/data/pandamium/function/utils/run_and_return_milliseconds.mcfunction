# arguments: command

stopwatch create pandamium:run_and_return_milliseconds
$$(command)
execute store result score <milliseconds> variable run stopwatch query pandamium:run_and_return_milliseconds 1000
stopwatch remove pandamium:run_and_return_milliseconds
return run scoreboard players get <milliseconds> variable
