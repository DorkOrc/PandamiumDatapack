# arguments: index, username, command, (id)

$data modify storage pandamium:cache macros.particles.entries[-1].command set value 'execute as $(username) at @s[gamemode=!spectator,predicate=!pandamium:player/is_hidden] run $(command)'
$data modify storage pandamium:cache macros.particles.lines."$(index)" set from storage pandamium:cache macros.particles.entries[-1].command
