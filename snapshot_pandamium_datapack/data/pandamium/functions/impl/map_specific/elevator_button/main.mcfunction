execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={mineshaft.bottom.interact=true}}] run function pandamium:impl/map_specific/elevator/actions/mineshaft/move_to_bottom
execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={mineshaft.top.interact=true}}] run function pandamium:impl/map_specific/elevator/actions/mineshaft/move_to_top

execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={mineshaft.bottom.punch=true}}] run function pandamium:impl/map_specific/elevator/actions/mineshaft/move_to_bottom
execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={mineshaft.top.punch=true}}] run function pandamium:impl/map_specific/elevator/actions/mineshaft/move_to_top

execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={maproom.bottom.interact=true}}] run function pandamium:impl/map_specific/elevator/actions/maproom/move_to_bottom
execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={maproom.middle.interact=true}}] run function pandamium:impl/map_specific/elevator/actions/maproom/move_to_middle
execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={maproom.top.interact=true}}] run function pandamium:impl/map_specific/elevator/actions/maproom/move_to_top

execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={maproom.bottom.punch=true}}] run function pandamium:impl/map_specific/elevator/actions/maproom/move_to_bottom
execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={maproom.middle.punch=true}}] run function pandamium:impl/map_specific/elevator/actions/maproom/move_to_middle
execute if entity @s[advancements={pandamium:detect/map_specific/interact_with_elevator_button={maproom.top.punch=true}}] run function pandamium:impl/map_specific/elevator/actions/maproom/move_to_top

advancement revoke @s only pandamium:detect/map_specific/interact_with_elevator_button
