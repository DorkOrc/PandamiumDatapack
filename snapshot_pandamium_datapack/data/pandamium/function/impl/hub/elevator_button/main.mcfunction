# sound fx
execute anchored eyes run playsound minecraft:block.stone_button.click_on block @a[distance=..16] ^ ^ ^2

# mineshaft
execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={mineshaft.bottom.interact=true}}] run function pandamium:impl/hub/elevator/actions/mineshaft/move_to_bottom
execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={mineshaft.bottom.punch=true}}] run function pandamium:impl/hub/elevator/actions/mineshaft/move_to_bottom

execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={mineshaft.top.interact=true}}] run function pandamium:impl/hub/elevator/actions/mineshaft/move_to_top
execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={mineshaft.top.punch=true}}] run function pandamium:impl/hub/elevator/actions/mineshaft/move_to_top

# map room
execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={map_room.bottom.interact=true}}] run function pandamium:impl/hub/elevator/actions/map_room/move_to_bottom
execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={map_room.bottom.punch=true}}] run function pandamium:impl/hub/elevator/actions/map_room/move_to_bottom

execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={map_room.middle.interact=true}}] run function pandamium:impl/hub/elevator/actions/map_room/move_to_middle
execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={map_room.middle.punch=true}}] run function pandamium:impl/hub/elevator/actions/map_room/move_to_middle

execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={map_room.top.interact=true}}] run function pandamium:impl/hub/elevator/actions/map_room/move_to_top
execute if entity @s[advancements={pandamium:detect/hub/interact_with_elevator_button={map_room.top.punch=true}}] run function pandamium:impl/hub/elevator/actions/map_room/move_to_top

# reset advancement
advancement revoke @s only pandamium:detect/hub/interact_with_elevator_button
