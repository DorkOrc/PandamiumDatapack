# check done
execute if score <completed_database_fix_version> global matches 1009.. run return 0
scoreboard players set <completed_database_fix_version> global 1009

# 1009 = 25w02a branch

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {color:"gray",italic:true,text:"[Pandamium: Datafixer started]"}

# run
data remove storage pandamium.db.players:data entries[].data.flair.json

tellraw @a[scores={send_extra_debug_info=2..}] {color:"gray",italic:true,text:"[Pandamium: Datafixer finished]"}
#function pandamium:impl/queue/append/datafixer

return 1
