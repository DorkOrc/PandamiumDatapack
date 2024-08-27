# arguments: id

$execute if data storage pandamium:temp attached_items[{private:$(id)}] run data modify storage pandamium:temp attached_items[{private:$(id)}].__viewable__ set value 1b
$execute if data storage pandamium:temp attached_items[{private:{id:$(id)}}] run data modify storage pandamium:temp attached_items[{private:{id:$(id)}}].__viewable__ set value 1b
