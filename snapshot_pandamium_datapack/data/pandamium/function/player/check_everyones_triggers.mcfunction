# aliases
function pandamium:impl/dynamic_triggers/macros/main

execute as @a[scores={femail=-2147483648..}] unless score @s femail matches 0 run scoreboard players operation @s mail = @s femail
scoreboard players set @a[scores={femail=-2147483648..}] femail 0
scoreboard players enable @a[scores={femail=0}] femail

execute as @a[scores={parkour.warp.Forgotten_Caverns=-2147483648..}] unless score @s parkour.warp.Forgotten_Caverns matches 0 run scoreboard players set @s parkour -103
scoreboard players set @a[scores={parkour.warp.Forgotten_Caverns=-2147483648..}] parkour.warp.Forgotten_Caverns 0
scoreboard players enable @a[scores={parkour.warp.Forgotten_Caverns=0}] parkour.warp.Forgotten_Caverns

execute as @a[scores={vote_shop=-2147483648..}] unless score @s vote_shop matches 0 run scoreboard players operation @s rewards_shop = @s vote_shop
scoreboard players set @a[scores={vote_shop=-2147483648..}] vote_shop 0
scoreboard players enable @a[scores={vote_shop=0}] vote_shop

execute as @a[scores={help.advancements=-2147483648..}] unless score @s help.advancements matches 0 run function pandamium:triggers/help.advancements/main
scoreboard players reset @a help.advancements
scoreboard players enable @a[scores={optn.enable_mini_block_help_trigger=1}] help.advancements

execute as @a[scores={news=-2147483648..}] unless score @s news matches 0 run scoreboard players set @s mail 1000007
scoreboard players set @a[scores={news=-2147483648..}] news 0
scoreboard players enable @a news

# normal triggers
execute as @a[scores={super_secret_trigger=1..}] at @s run function pandamium:triggers/super_secret_trigger/main
execute as @a[scores={super_secret_trigger=..-1}] at @s run function pandamium:triggers/super_secret_trigger/main

execute as @a[scores={spawn=1..}] at @s run function pandamium:triggers/spawn/main
execute as @a[scores={spawn=..-1}] at @s run function pandamium:triggers/spawn/main
execute as @a[scores={enderman_farm=1..},limit=1] at @s run function pandamium:triggers/enderman_farm/main
execute as @a[scores={enderman_farm=..-1},limit=1] at @s run function pandamium:triggers/enderman_farm/main
execute as @a[scores={rtp=1..},limit=1] at @s run function pandamium:triggers/rtp/main
execute as @a[scores={rtp=..-1},limit=1] at @s run function pandamium:triggers/rtp/main
execute as @a[scores={respawn=1..}] at @s run function pandamium:triggers/respawn/main
execute as @a[scores={respawn=..-1}] at @s run function pandamium:triggers/respawn/main
execute as @a[scores={playtime=1..}] at @s run function pandamium:triggers/playtime/main
execute as @a[scores={playtime=..-1}] at @s run function pandamium:triggers/playtime/main
execute as @a[scores={discord=1..}] at @s run function pandamium:triggers/discord/main
execute as @a[scores={discord=..-1}] at @s run function pandamium:triggers/discord/main
execute as @a[scores={options=1..}] at @s run function pandamium:triggers/options/main
execute as @a[scores={options=..-1}] at @s run function pandamium:triggers/options/main
execute as @a[scores={clear_inventory=1..}] at @s run function pandamium:triggers/clear_inventory/main
execute as @a[scores={clear_inventory=..-1}] at @s run function pandamium:triggers/clear_inventory/main
execute as @a[scores={world_info=1..}] at @s run function pandamium:triggers/world_info/main
execute as @a[scores={world_info=..-1}] at @s run function pandamium:triggers/world_info/main
execute as @a[scores={guidebook=1..}] at @s run function pandamium:triggers/guidebook/main
execute as @a[scores={guidebook=..-1}] at @s run function pandamium:triggers/guidebook/main
execute as @a[scores={leaderboards=1..}] at @s run function pandamium:triggers/leaderboards/main
execute as @a[scores={leaderboards=..-1}] at @s run function pandamium:triggers/leaderboards/main
execute as @a[scores={sit=1..}] at @s run function pandamium:triggers/sit/main
execute as @a[scores={sit=..-1}] at @s run function pandamium:triggers/sit/main
execute as @a[scores={afk=1..}] at @s run function pandamium:triggers/afk/main
execute as @a[scores={afk=..-1}] at @s run function pandamium:triggers/afk/main
execute as @a[scores={vote=1..}] at @s run function pandamium:triggers/vote/main
execute as @a[scores={vote=..-1}] at @s run function pandamium:triggers/vote/main
execute as @a[scores={rewards_shop=1..}] at @s run function pandamium:triggers/vote_shop/main
execute as @a[scores={rewards_shop=..-1}] at @s run function pandamium:triggers/vote_shop/main
execute as @a[scores={gift=1..}] at @s run function pandamium:triggers/gift/main
execute as @a[scores={gift=..-1}] at @s run function pandamium:triggers/gift/main
execute as @a[scores={tpa=1..}] at @s run function pandamium:triggers/tpa/main
execute as @a[scores={tpa=..-1}] at @s run function pandamium:triggers/tpa/main
execute as @a[scores={mail=1..}] at @s run function pandamium:triggers/mail/main
execute as @a[scores={mail=..-1}] at @s run function pandamium:triggers/mail/main
execute as @a[scores={search_players=1..}] at @s run function pandamium:triggers/search_players/main
execute as @a[scores={search_players=..-1}] at @s run function pandamium:triggers/search_players/main

execute as @a[scores={sethome=1..}] at @s run function pandamium:triggers/sethome/main
execute as @a[scores={sethome=..-1}] at @s run function pandamium:triggers/sethome/main
execute as @a[scores={delhome=1..}] at @s run function pandamium:triggers/delhome/main
execute as @a[scores={delhome=..-1}] at @s run function pandamium:triggers/delhome/main
execute as @a[scores={namehome=1..}] at @s run function pandamium:triggers/namehome/main
execute as @a[scores={namehome=..-1}] at @s run function pandamium:triggers/namehome/main
execute as @a[scores={home=1..},limit=1] at @s run function pandamium:triggers/home/main
execute as @a[scores={home=..-1},limit=1] at @s run function pandamium:triggers/home/main
execute as @a[scores={homes=1..},limit=1] at @s run function pandamium:triggers/homes/main
execute as @a[scores={homes=..-1},limit=1] at @s run function pandamium:triggers/homes/main

execute as @a[scores={parkour=1..}] at @s run function pandamium:triggers/parkour/main
execute as @a[scores={parkour=..-1}] at @s run function pandamium:triggers/parkour/main
execute as @a[scores={parkour.quit=1..}] at @s run function pandamium:triggers/parkour_quit/main
execute as @a[scores={parkour.quit=..-1}] at @s run function pandamium:triggers/parkour_quit/main
execute as @a[scores={parkour.restart=1..}] at @s run function pandamium:triggers/parkour_restart/main
execute as @a[scores={parkour.restart=..-1}] at @s run function pandamium:triggers/parkour_restart/main

# Supporter-only
execute as @a[scores={particles=1..}] at @s run function pandamium:triggers/particles/main
execute as @a[scores={particles=..-1}] at @s run function pandamium:triggers/particles/main
execute as @a[scores={flair=1..}] at @s run function pandamium:triggers/flair/main
execute as @a[scores={flair=..-1}] at @s run function pandamium:triggers/flair/main
execute as @a[scores={pose=1..},limit=1] at @s run function pandamium:triggers/pose/main
execute as @a[scores={pose=..-1},limit=1] at @s run function pandamium:triggers/pose/main
execute as @a[scores={frame_visibility=1..},limit=1] at @s run function pandamium:triggers/frame_visibility/main
execute as @a[scores={frame_visibility=..-1},limit=1] at @s run function pandamium:triggers/frame_visibility/main
execute as @a[scores={hat=1..}] at @s run function pandamium:triggers/hat/main
execute as @a[scores={hat=..-1}] at @s run function pandamium:triggers/hat/main
execute as @a[scores={item_font=1..},limit=1] at @s run function pandamium:triggers/item_font/main
execute as @a[scores={item_font=..-1},limit=1] at @s run function pandamium:triggers/item_font/main
execute as @a[scores={sign_font=1..},limit=1] at @s run function pandamium:triggers/sign_font/main
execute as @a[scores={sign_font=..-1},limit=1] at @s run function pandamium:triggers/sign_font/main
execute as @a[scores={enderchest=1..},limit=1] at @s run function pandamium:triggers/enderchest/main
execute as @a[scores={enderchest=..-1},limit=1] at @s run function pandamium:triggers/enderchest/main

# Staff-only
execute as @a[scores={staff_menu=1..}] at @s run function pandamium:triggers/staff_menu/main
execute as @a[scores={staff_menu=..-1}] at @s run function pandamium:triggers/staff_menu/main
execute as @a[scores={toggle_spectator=1..}] at @s run function pandamium:triggers/toggle_spectator/main
execute as @a[scores={toggle_spectator=..-1}] at @s run function pandamium:triggers/toggle_spectator/main
execute as @a[scores={item_clear=1..}] at @s run function pandamium:triggers/item_clear/main
execute as @a[scores={item_clear=..-1}] at @s run function pandamium:triggers/item_clear/main
execute as @a[scores={restart_server=1..}] at @s run function pandamium:triggers/restart_server/main
execute as @a[scores={restart_server=..-1}] at @s run function pandamium:triggers/restart_server/main
execute as @a[scores={reload_data_pack=1..}] at @s run function pandamium:triggers/reload_data_pack/main
execute as @a[scores={reload_data_pack=..-1}] at @s run function pandamium:triggers/reload_data_pack/main
execute as @a[scores={player_info=1..}] at @s run function pandamium:triggers/player_info/main
execute as @a[scores={player_info=..-1}] at @s run function pandamium:triggers/player_info/main
execute as @a[scores={player_info_v2=1..}] at @s run function pandamium:triggers/player_info_v2/main
execute as @a[scores={player_info_v2=..-1}] at @s run function pandamium:triggers/player_info_v2/main
execute as @a[scores={auto_actions_log=1..}] at @s run function pandamium:triggers/auto_actions_log/main
execute as @a[scores={auto_actions_log=..-1}] at @s run function pandamium:triggers/auto_actions_log/main
execute as @a[scores={switch_dimension=1..}] at @s run function pandamium:triggers/switch_dimension/main
execute as @a[scores={switch_dimension=..-1}] at @s run function pandamium:triggers/switch_dimension/main
execute as @a[scores={hide=1..}] at @s run function pandamium:triggers/hide/main
execute as @a[scores={hide=..-1}] at @s run function pandamium:triggers/hide/main
execute as @a[scores={tp=1..}] at @s run function pandamium:triggers/tp/main
execute as @a[scores={tp=..-1}] at @s run function pandamium:triggers/tp/main
execute as @a[scores={pre_jail_tp=1..}] at @s run function pandamium:triggers/pre_jail_tp/main
execute as @a[scores={pre_jail_tp=..-1}] at @s run function pandamium:triggers/pre_jail_tp/main
execute as @a[scores={staff_world=1..}] at @s run function pandamium:triggers/staff_world/main
execute as @a[scores={staff_world=..-1}] at @s run function pandamium:triggers/staff_world/main
execute as @a[scores={enderman_farm.config=1..}] at @s run function pandamium:triggers/enderman_farm.config/main
execute as @a[scores={enderman_farm.config=..-1}] at @s run function pandamium:triggers/enderman_farm.config/main

execute as @a[scores={homes=..-1}] at @s run function pandamium:triggers/homes/main
execute as @a[scores={spawnpoint=1..}] at @s run function pandamium:triggers/spawnpoint/main
execute as @a[scores={spawnpoint=..-1}] at @s run function pandamium:triggers/spawnpoint/main
execute as @a[scores={search_nearby=1..}] at @s run function pandamium:triggers/search_nearby/main
execute as @a[scores={search_nearby=..-1}] at @s run function pandamium:triggers/search_nearby/main

execute as @a[scores={jail=1..}] at @s run function pandamium:triggers/jail/main
execute as @a[scores={jail=..-1}] at @s run function pandamium:triggers/jail/main
execute as @a[scores={unjail=1..}] at @s run function pandamium:triggers/unjail/main
execute as @a[scores={unjail=..-1}] at @s run function pandamium:triggers/unjail/main
execute as @a[scores={kick=1..}] at @s run function pandamium:triggers/kick/main
execute as @a[scores={kick=..-1}] at @s run function pandamium:triggers/kick/main
execute as @a[scores={ban=..-1}] at @s run function pandamium:triggers/ban/main
execute as @a[scores={ban=1..}] at @s run function pandamium:triggers/ban/main

execute as @a[scores={inspect_inventory=1..}] at @s run function pandamium:triggers/inspect_inventory/main
execute as @a[scores={inspect_inventory=..-1}] at @s run function pandamium:triggers/inspect_inventory/main

execute as @a[scores={inspect_enderchest=1..}] at @s run function pandamium:triggers/inspect_enderchest/main
execute as @a[scores={inspect_enderchest=..-1}] at @s run function pandamium:triggers/inspect_enderchest/main

execute as @a[scores={inspect_container=1..}] at @s run function pandamium:triggers/inspect_container/main
execute as @a[scores={inspect_container=..-1}] at @s run function pandamium:triggers/inspect_container/main

execute as @a[scores={take_enderchest=1..}] at @s run function pandamium:triggers/take_enderchest/main
execute as @a[scores={take_enderchest=..-1}] at @s run function pandamium:triggers/take_enderchest/main
execute as @a[scores={take_inventory=1..}] at @s run function pandamium:triggers/take_inventory/main
execute as @a[scores={take_inventory=..-1}] at @s run function pandamium:triggers/take_inventory/main
execute as @a[scores={take_bound_items=1..}] at @s run function pandamium:triggers/take_bound_items/main
execute as @a[scores={take_bound_items=..-1}] at @s run function pandamium:triggers/take_bound_items/main

#> Post
execute if score <trigger_removed_suffixes> global matches 1 as @a run function pandamium:player/teams/update_suffix
scoreboard players set <trigger_removed_suffixes> global 0
