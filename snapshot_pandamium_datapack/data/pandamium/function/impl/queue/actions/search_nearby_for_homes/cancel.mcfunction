$tellraw @a[scores={id=$(source)},limit=1] {color:"red",text:"Cancelled search!"}
$execute in pandamium:staff_world positioned 8. 0 8. run kill @e[type=marker,tag=$(node_entity_tag),x=0]
