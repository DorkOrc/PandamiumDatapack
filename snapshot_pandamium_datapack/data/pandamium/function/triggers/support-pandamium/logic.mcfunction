# displaying info
execute if score @s support-pandamium matches ..-1 unless score @s support-pandamium matches -101 run scoreboard players set @s support-pandamium 1

execute if score @s support-pandamium matches 1.. run return run tellraw @s [{"text":"[Patreon] ","color":"dark_green"},[{"text":"","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to visit our ","color":"aqua"},{"text":"Patreon","bold":true}," page"]},"clickEvent":{"action":"open_url","value":"https://www.patreon.com/Pandamium"}},"If you would like to ",{"text":"financially support Pandamium","color":"aqua"},", you can do so through our ",{"text":"Patreon","color":"aqua"}," page! For every ",{"text":"€5","color":"aqua"},{"text":" (or £5 or $6)","color":"dark_aqua"}," you pledge, we will give you ",{"text":"1 month","color":"aqua"}," of the ",{"text":"Supporter rank","color":"dark_purple"}," as a thank you! This kind of support helps us to maintain and improve the hardware that the server runs on, and could allow us to upgrade in the future and fund other things!\n",{"text":"Click this message to visit the Patreon page, and feel free to contact staff for more information!","color":"dark_aqua"}]]
