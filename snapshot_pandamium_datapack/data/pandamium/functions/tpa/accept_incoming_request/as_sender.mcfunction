tag @s add sender

function pandamium:tpa/check_can_accept
execute if score <can_accept> variable matches 0 store success score <returned> variable run tellraw @a[tag=receiver,limit=1] [{"text":"[TPA]","color":"dark_red"},{"text":" You cannot accept this TPA request currently! ","color":"red"},{"text":"[X]","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger tpa set -2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to ","color":"red"},{"text":"Deny","bold":true}," incoming TPA Request"]}}]

execute if score <returned> variable matches 0 run function pandamium:tpa/accept_incoming_request/do_accept

tag @s remove sender
