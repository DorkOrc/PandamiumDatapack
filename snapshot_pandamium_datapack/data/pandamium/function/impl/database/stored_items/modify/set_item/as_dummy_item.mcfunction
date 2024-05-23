data modify entity @s Item set from storage pandamium.db.stored_items:io selected.item
data modify block 3 0 0 front_text.messages[0] set value '{"selector":"@e[type=item,tag=dummy_item,x=0.0,y=0.0,z=0.0,distance=..0.001,limit=1]","insertion":""}'
kill @s
