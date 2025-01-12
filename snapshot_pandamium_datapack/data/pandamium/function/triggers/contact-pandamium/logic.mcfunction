# displaying info
execute if score @s contact-pandamium matches ..-1 unless score @s contact-pandamium matches -101 run scoreboard players set @s contact-pandamium 1
execute if score @s contact-pandamium matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @s contact-pandamium 1
execute if score @s contact-pandamium = @s id run scoreboard players set @s contact-pandamium 1

execute if score @s contact-pandamium matches 1 run return run tellraw @s [{text:"[Contacting] ",color:"dark_green"},{text:"",color:"green",hover_event:{action:"show_text",text:[{text:"Click to join our ",color:"aqua"},{text:"Discord Server",bold:true}]},click_event:{action:"open_url",url:"http://discord.pandamium.eu/"},extra:[{text:"Click here to join us on Discord",color:"aqua"},{text:" for more access to our community and see "},{text:"announcements and changes",color:"aqua"},{text:" to the server and Minecraft in real time!\n "},{text:"Click here",color:"aqua",extra:[{text:" for other contacting methods and more information.",color:"green"}],hover_event:{action:"show_text",text:{text:"Click to see more contacting information",color:"aqua"}},click_event:{action:"run_command",command:"trigger contact-pandamium set -101"}}]}]
execute if score @s contact-pandamium matches -101 run return run tellraw @s [{text:"======== ",color:"dark_green",extra:[{text:"Contacting",bold:true},{text:" ========\n"}]},{text:"If you need to contact a moderator / staff member for an urgent matter, the quickest way to get in touch is through our ",color:"green",extra:[{text:"Discord server",color:"aqua",hover_event:{action:"show_text",text:[{text:"Click to join our ",color:"aqua"},{text:"Discord Server",bold:true}]},click_event:{action:"open_url",url:"http://discord.pandamium.eu/"}},{text:". You can open a private ticket through the "},{text:"#help-tickets",color:"aqua"},{text:" channel which a staff member will be able to respond to when they are available.\n\nYou can also use "},{text:"/tell",color:"aqua"},{text:" or "},{text:"/msg",color:"aqua"},{text:" to message online staff members or use "},{text:"/trigger mail",color:"aqua"},{text:" to send a message to "},{text:"The Staff Team",color:"yellow"},{text:"'s inbox, and that will be seen once a staff member joins the server.\n\nIf you are unable to do either of those things, or need to contact the server owner directly, you can send an email to "},{text:"pandamiummc.contact@gmail.com",color:"aqua",insertion:"pandamiummc.contact@gmail.com",hover_event:{action:"show_text",text:{text:'Click to copy "pandamiummc.contact@gmail.com" to your clipboard',color:"aqua"}}},{text:". However, this may take longer to be responded to so should not be used for urgent matters regarding moderation or Minecraft-related topics."}]},{text:"\n============================"}]

# sending info
scoreboard players operation <id> variable = @s contact-pandamium
execute unless entity @a[predicate=pandamium:matches_id,limit=1] run return run tellraw @s [{text:"[Contacting]",color:"dark_red"},{text:" Could not find a player with ID ",color:"red",extra:[{score:{name:"@s",objective:"contact-pandamium"}},{text:"!"}]}]

execute as @a[predicate=pandamium:matches_id,limit=1] run trigger contact-pandamium

function pandamium:utils/triggers/disable_player_suffixes
tellraw @s [{text:"[Contacting]",color:"dark_green"},{text:" Sent ",color:"green",extra:[{selector:"@a[predicate=pandamium:matches_id,limit=1]"},{text:" our Discord and contact information!"}]}]

execute unless score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '{"selector":"@s"}'
execute if score @s alt_of matches 1.. run data modify storage pandamium:temp source set value '"A staff member"'

tag @s add source
tellraw @a[scores={staff_perms=1..},tag=!source] [{text:"",color:"gray"},{text:"[Staff Info] ",color:"dark_gray"},{nbt:"source",storage:"pandamium:temp",interpret:true},{text:" sent "},{selector:"@a[predicate=pandamium:matches_id,limit=1]",color:"gray"},{text:" a Discord invite and contact information."}]
tag @s remove source
