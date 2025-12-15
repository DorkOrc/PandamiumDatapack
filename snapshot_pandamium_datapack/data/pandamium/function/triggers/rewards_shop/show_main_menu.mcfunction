data modify storage pandamium:rewards_shop dialogs.main_menu.dialog.body[0].contents set value {text:\
  "Use the Rewards Shop to get items and mobs using vote credits from voting for this server! You will common treasure, unique custom items, and snapshot content to play with as soon as it comes out!\n\n",extra:[\
  {color:"yellow",text:"You have no reward credits"},\
  {color:"aqua",text:"\nᴄʟɪᴄᴋ ʜᴇʀᴇ ᴛᴏ ᴇᴀʀɴ ᴍᴏʀᴇ ᴄʀᴇᴅɪᴛs!",underlined:true,hover_event:{action:"show_text",value:{color:"aqua",text:"Click to view the voting links"}},click_event:{action:"run_command",command:"trigger vote"}},\
  {color:"gray",italic:true,text:"\n\nHover over the item for more information"}\
]}

execute if score @s reward_credits matches 1 run data modify storage pandamium:rewards_shop dialogs.main_menu.dialog.body[0].contents.extra[0] set value [{color:"yellow",text:"You have "},{bold:true,color:"gold",text:"1"}," reward credit"]
execute if score @s reward_credits matches 2.. run function pandamium:utils/resolve_text_component {write_to:"storage pandamium:rewards_shop dialogs.main_menu.dialog.body[0].contents.extra[0]",text_component:[{color:"yellow",text:"You have "},{bold:true,color:"gold",score:{name:"@s",objective:"reward_credits"}}," reward credits"]}

function pandamium:utils/show_dialog with storage pandamium:rewards_shop dialogs.main_menu
