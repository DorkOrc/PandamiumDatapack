# displaying info
execute if score @s contact-pandamium matches ..-1 unless score @s contact-pandamium matches -101 run scoreboard players set @s contact-pandamium 1
execute if score @s contact-pandamium matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @s contact-pandamium 1
execute if score @s contact-pandamium = @s id run scoreboard players set @s contact-pandamium 1

execute if score @s contact-pandamium matches 1 run return run tellraw @s [{"text":"[Contacting] ","color":"dark_green"},[{"text":"","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},{"text":"Click here to join us on Discord","color":"aqua"}," for more access to our community and see ",{"text":"announcements and changes","color":"aqua"}," to the server and Minecraft in real time!\n ",{"text":"Click here","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"Click to see more contacting information","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/trigger contact-pandamium set -101"},"extra":[{"text":" for other contacting methods and more information.","color":"green"}]}]]
execute if score @s contact-pandamium matches -101 run return run tellraw @s [{"text":"======== ","color":"dark_green","extra":[{"text":"Contacting","bold":true}," ========\n"]},[{"text":"If you need to contact a moderator / staff member for an urgent matter, the quickest way to get in touch is through our ","color":"green"},{"text":"Discord server","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to join our ","color":"aqua"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}},". You can open a private ticket through the ",{"text":"#help-tickets","color":"aqua"}," channel which a staff member will be able to respond to when they are available.\n\nYou can also use ",{"text":"/tell","color":"aqua"}," or ",{"text":"/msg","color":"aqua"}," to message online staff members or use ",{"text":"/trigger mail","color":"aqua"}," to send a message to ",{"text":"The Staff Team","color":"yellow"},"'s inbox, and that will be seen once a staff member joins the server.\n\nIf you are unable to do either of those things, or need to contact the server owner directly, you can send an email to ",{"text":"pandamiummc.contact@gmail.com","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"Click to copy \"pandamiummc.contact@gmail.com\" to your clipboard","color":"aqua"}},"clickEvent":{"action":"copy_to_clipboard","value":"pandamiummc.contact@gmail.com"},"insertion":"pandamiummc.contact@gmail.com"},". However, this may take longer to be responded to so should not be used for urgent matters regarding moderation or Minecraft-related topics."],"\n============================"]

# sending info
scoreboard players operation <id> variable = @s contact-pandamium
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run tellraw @s [{"text":"[Contacting]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"contact-pandamium"}},"!"]]

execute as @a[predicate=pandamium:matches_id,limit=1] run trigger contact-pandamium

function pandamium:utils/triggers/disable_player_suffixes
tellraw @s [{"text":"[Contacting]","color":"dark_green"},[{"text":" Sent ","color":"green"},{"selector":"@a[predicate=pandamium:matches_id,limit=1]"}," our Discord and contact information!"]]

execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"A staff member"'

tag @s add source
tellraw @a[scores={staff_perms=1..},tag=!source] [{"text":"","color":"gray"},{"text":"[Staff Info] ","color":"dark_gray"},{"nbt":"source","storage":"pandamium:temp","interpret":true}," sent ",{"selector":"@a[predicate=pandamium:matches_id,limit=1]","color":"gray"}," a Discord invite and contact information."]
tag @s remove source
