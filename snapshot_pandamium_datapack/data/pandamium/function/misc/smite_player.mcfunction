# arguments: username

$execute at $(username) run summon lightning_bolt

execute store result score <gamerule.show_death_messages> variable run gamerule showDeathMessages
gamerule showDeathMessages false
$kill $(username)
execute if score <gamerule.show_death_messages> variable matches 1 run gamerule showDeathMessages true

$execute if entity $(username) run data modify storage pandamium:queue entries append value {action:"run_command",command:'execute if entity $(username) run tellraw @a ["",{"selector":"$(username)"}," was smited"]'}
