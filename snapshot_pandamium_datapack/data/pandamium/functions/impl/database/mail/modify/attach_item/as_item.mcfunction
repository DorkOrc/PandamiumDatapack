data modify entity @s Item set from storage pandamium:temp item
data modify block 3 0 0 front_text.messages[0] set value '{"selector":"@e[x=3.5,y=0.0,z=0.5,type=item,tag=mail.added_item,distance=..1,limit=1]","insertion":""}'
kill @s
