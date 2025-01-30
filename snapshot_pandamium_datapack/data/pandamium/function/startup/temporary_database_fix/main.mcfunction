# check done
execute if score <completed_database_fix_version> global matches 1009.. run return 0
scoreboard players set <completed_database_fix_version> global 1009

# 1009 = 1.21.5 (Spring Drop) branch

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {color:"gray",italic:true,text:"[Pandamium: Datafixer started]"}

# run
function pandamium:impl/queue/append/datafixer
function pandamium:admin/refresh_leader_board/groups/all

tellraw @a[scores={send_extra_debug_info=2..}] {color:"gray",italic:true,text:"[Pandamium: Datafixer finished]"}

return 1
