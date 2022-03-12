#Event
#scoreboard players enable @a event
#tellraw @a[scores={event=1..},nbt=!{Inventory:[]}] [{"text":"[Event]","color":"dark_red"},{"text":" You can only join the event with an empty inventory!","color":"red"}]
#effect clear @a[scores={event=1..},nbt={Inventory:[]}]
#tp @a[scores={event=1..},nbt={Inventory:[]}] 0 101 0
#scoreboard players set @a event 0

#Shadow's cheated items
#scoreboard players set @a[nbt={Inventory:[{tag:{display:{Lore:["\"Behold the Might\"","\"of the Builders\""]}}}]}] hadCheatedItem 1

#Welcome message
#execute as @a[team=] run tellraw @a [{"text":"[Pandamium]","color":"dark_blue"},{"text":" Welcome to the server ","color":"green"},{"selector":"@s","color":"aqua"},{"text":"! Have fun!","color":"green"}]

#Teams
#team join guest @a[team=]
#team join player @a[team=guest,scores={votes=5..}]
#team join player+ @a[team=player,scores={votes=25..}]
#team join player++ @a[team=player+,scores={votes=125..}]

#Perms
#scoreboard players set @a[team=guest] gameplayPerms 0
#scoreboard players set @a[team=player] gameplayPerms 1
#scoreboard players set @a[team=player+] gameplayPerms 2
#scoreboard players set @a[team=player++] gameplayPerms 3
#scoreboard players set @a[team=donator] gameplayPerms 4
#scoreboard players set @a[team=vip] gameplayPerms 4
#scoreboard players set @a[team=supporter] gameplayPerms 3
#scoreboard players set @a[team=supporter+] gameplayPerms 4
#scoreboard players set @a[team=moderator] gameplayPerms 3
#scoreboard players set @a[team=moderator+] gameplayPerms 4
#scoreboard players set @a[team=owner] gameplayPerms 4
#
#scoreboard players set @a[team=guest] moderationPerms 0
#scoreboard players set @a[team=player] moderationPerms 0
#scoreboard players set @a[team=player+] moderationPerms 0
#scoreboard players set @a[team=donator] moderationPerms 0
#scoreboard players set @a[team=vip] moderationPerms 0
#scoreboard players set @a[team=supporter] moderationPerms 1
#scoreboard players set @a[team=supporter+] moderationPerms 1
#scoreboard players set @a[team=moderator] moderationPerms 2
#scoreboard players set @a[team=moderator+] moderationPerms 2
#scoreboard players set @a[team=owner] moderationPerms 2

#Set owner votes to -1
#scoreboard players set @a[team=owner] votes -1

#Disable tnt
execute as @e[type=tnt] unless entity @s[x=-584593,y=0,z=998806,dx=2000,dy=256,dz=2000] run kill @s
# kill @e[type=tnt]

#Spawn effects and no mobs
effect give @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] minecraft:resistance 1 4 true
effect give @a[x=-512,y=0,z=-512,dx=1024,dy=256,dz=1024] minecraft:saturation 2 0 true
effect give @a[x=-64,y=0,z=-64,dx=128,dy=256,dz=128] minecraft:weakness 1 0 true
tp @e[x=-256,y=0,z=-256,dx=512,dy=256,dz=512,type=!minecraft:player,type=!item,type=!minecraft:horse,type=!minecraft:wolf,type=!minecraft:ocelot,type=!minecraft:cat,type=!minecraft:parrot,type=!minecraft:trident,type=!minecraft:armor_stand,type=!potion,type=!experience_bottle,type=!experience_orb,type=!arrow,type=!minecraft:chicken,type=!minecraft:pig,type=!minecraft:polar_bear,type=!minecraft:mooshroom,type=!rabbit,type=!sheep,type=!tropical_fish,type=!minecraft:turtle,type=!minecraft:dolphin,type=!minecraft:panda,type=!minecraft:fox,type=!minecraft:llama,type=!minecraft:skeleton_horse,type=!minecraft:wolf,type=!minecraft:snow_golem,type=!minecraft:item_frame,type=!minecraft:end_crystal,type=!minecraft:cod,type=!minecraft:salmon,type=!minecraft:bat,type=!minecraft:minecart,type=!minecraft:hopper_minecart,type=!minecraft:magma_cube,type=!minecraft:endermite] 0 -1000 0

#Spawn command
#scoreboard players enable @a spawn
#tp @a[scores={spawn=1..}] 0 65 0
#scoreboard players set @a spawn 0

#Automated messages and item clear
#execute if score <chatTimer> variable matches 20000.. run scoreboard players set <chatTimer> variable 0
#execute if score <chatTimer> variable matches 0 run tellraw @a [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You can ","color":"green"},{"text":"vote","color":"aqua"},{"text":", to get rewards like ","color":"green"},{"text":"diamonds","color":"aqua"},{"text":" or ","color":"green"},{"text":"golden apples","color":"aqua"},{"text":" and also increase your rank. Click ","color":"green"},{"text":"[here]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger vote"}},{"text":" to vote.","color":"green"}]
#execute if score <chatTimer> variable matches 4000 run tellraw @a [{"text":"[Pandamium] ","color":"dark_blue"},{"text":"Click ","color":"green"},{"text":"[here]","color":"aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/B4yMRTu"}},{"text":" to join our official ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" server with all the ","color":"green"},{"text":"commands, rules, announcements","color":"aqua"},{"text":" and more!","color":"green"}]
#execute if score <chatTimer> variable matches 8000 run tellraw @a [{"text":"[Pandamium]","color":"dark_blue"},{"text":" All ","color":"green"},{"text":"items","color":"aqua"},{"text":" will be cleared in ","color":"green"},{"text":"60 seconds","color":"aqua"},{"text":"!","color":"green"}]
#execute if score <chatTimer> variable matches 9000 run tellraw @a [{"text":"[Pandamium]","color":"dark_blue"},{"text":" All ","color":"green"},{"text":"items","color":"aqua"},{"text":" will be cleared in ","color":"green"},{"text":"10 seconds","color":"aqua"},{"text":"!","color":"green"}]
#execute if score <chatTimer> variable matches 9200 run kill @e[type=item,nbt=!{Item:{id:"minecraft:shulker_box"}},nbt=!{Item:{id:"minecraft:white_shulker_box"}},nbt=!{Item:{id:"minecraft:orange_shulker_box"}},nbt=!{Item:{id:"minecraft:magenta_shulker_box"}},nbt=!{Item:{id:"light_blue_minecraft:shulker_box"}},nbt=!{Item:{id:"minecraft:yellow_shulker_box"}},nbt=!{Item:{id:"minecraft:lime_shulker_box"}},nbt=!{Item:{id:"minecraft:pink_shulker_box"}},nbt=!{Item:{id:"minecraft:gray_shulker_box"}},nbt=!{Item:{id:"minecraft:light_gray_shulker_box"}},nbt=!{Item:{id:"minecraft:cyan_shulker_box"}},nbt=!{Item:{id:"minecraft:purple_shulker_box"}},nbt=!{Item:{id:"minecraft:blue_shulker_box"}},nbt=!{Item:{id:"minecraft:brown_shulker_box"}},nbt=!{Item:{id:"green_minecraft:shulker_box"}},nbt=!{Item:{id:"minecraft:red_shulker_box"}},nbt=!{Item:{id:"minecraft:black_shulker_box"}},nbt=!{Item:{id:"minecraft:trident"}}]
#execute if score <chatTimer> variable matches 9200 run tellraw @a [{"text":"[Pandamium]","color":"dark_blue"},{"text":" All ","color":"green"},{"text":"items","color":"aqua"},{"text":" were cleared!","color":"green"}]
#execute if score <chatTimer> variable matches 12000 run tellraw @a [{"text":"[Pandamium] ","color":"dark_blue"},{"text":"You can ","color":"green"},{"text":"donate","color":"aqua"},{"text":" to get access to ","color":"green"},{"text":"5 homes without cooldown","color":"aqua"},{"text":" and much more, check our ","color":"green"},{"text":"Discord","color":"aqua"},{"text":"!","color":"green"}]
#execute if score <chatTimer> variable matches 16000 run tellraw @a [{"text":"[Pandamium]","color":"dark_blue"},{"text":" All ","color":"green"},{"text":"items","color":"aqua"},{"text":" will be cleared in ","color":"green"},{"text":"60 seconds","color":"aqua"},{"text":"!","color":"green"}]
#execute if score <chatTimer> variable matches 17000 run tellraw @a [{"text":"[Pandamium]","color":"dark_blue"},{"text":" All ","color":"green"},{"text":"items","color":"aqua"},{"text":" will be cleared in ","color":"green"},{"text":"10 seconds","color":"aqua"},{"text":"!","color":"green"}]
#execute if score <chatTimer> variable matches 9200 run kill @e[type=item,nbt=!{Item:{id:"minecraft:shulker_box"}},nbt=!{Item:{id:"minecraft:white_shulker_box"}},nbt=!{Item:{id:"minecraft:orange_shulker_box"}},nbt=!{Item:{id:"minecraft:magenta_shulker_box"}},nbt=!{Item:{id:"light_blue_minecraft:shulker_box"}},nbt=!{Item:{id:"minecraft:yellow_shulker_box"}},nbt=!{Item:{id:"minecraft:lime_shulker_box"}},nbt=!{Item:{id:"minecraft:pink_shulker_box"}},nbt=!{Item:{id:"minecraft:gray_shulker_box"}},nbt=!{Item:{id:"minecraft:light_gray_shulker_box"}},nbt=!{Item:{id:"minecraft:cyan_shulker_box"}},nbt=!{Item:{id:"minecraft:purple_shulker_box"}},nbt=!{Item:{id:"minecraft:blue_shulker_box"}},nbt=!{Item:{id:"brown_minecraft:shulker_box"}},nbt=!{Item:{id:"green_minecraft:shulker_box"}},nbt=!{Item:{id:"minecraft:red_shulker_box"}},nbt=!{Item:{id:"minecraft:black_shulker_box"}},nbt=!{Item:{id:"minecraft:trident"}}]
#execute if score <chatTimer> variable matches 17200 run tellraw @a [{"text":"[Pandamium]","color":"dark_blue"},{"text":" All ","color":"green"},{"text":"items","color":"aqua"},{"text":" were cleared!","color":"green"}]
#scoreboard players add <chatTimer> variable 1

#Vote links
#scoreboard players enable @a vote
#tellraw @a[scores={vote=1..}] [{"text":"[Pandamium]","color":"dark_blue"},{"text":" Click on the links to vote:\nLink 1: ","color":"green"},{"text":"minecraft-server-list.com","color":"aqua","clickEvent":{"action":"open_url","value":"https://minecraft-server-list.com/server/432071/vote"}},{"text":"\nLink 2: ","color":"green"},{"text":"minecraftservers.org","color":"aqua","clickEvent":{"action":"open_url","value":"https://minecraftservers.org/vote/559675"}},{"text":"\nLink 3: ","color":"green"},{"text":"minecraft-mp.com","color":"aqua","clickEvent":{"action":"open_url","value":"https://minecraft-mp.com/server/207380/vote/"}},{"text":"\nLink 4: ","color":"green"},{"text":"topg.org","color":"aqua","clickEvent":{"action":"open_url","value":"https://topg.org/Minecraft/in-517972"}}]
#scoreboard players set @a vote 0

#Show votes command
#scoreboard players enable @a showVotes
#execute as @a[scores={showVotes=1..}] run tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" You have ","color":"green"},{"score":{"name":"@s","objective":"votes"},"color":"aqua"},{"text":" votes! ","color":"green"}]
#scoreboard players set @a showVotes 0

#Vote shop
#scoreboard players enable @a voteShop
#scoreboard players enable @a voteReward

#scoreboard players add @a voteCredits 0

#execute as @a[scores={voteShop=1..}] run tellraw @s [{"text":"[Pandamium]","color":"dark_blue"},{"text":" Vote shop","color":"aqua"},{"text":": You currently have ","color":"green"},{"score":{"name":"@s","objective":"voteCredits"},"color":"aqua"},{"text":" credits!\n","color":"green"},{"text":"[1] ","color":"green"},{"text":"1 Diamond","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger voteReward set 1"}},{"text":"[2] ","color":"green"},{"text":"3 Golden Apples","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger voteReward set 2"}},{"text":"[3] ","color":"green"},{"text":"8 Experience Bottles","color":"aqua"},{"text":" [Buy for 1 credit]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger voteReward set 3"}},{"text":"[4] ","color":"green"},{"text":"Mending Book","color":"aqua"},{"text":" [Buy for 15 #credits]\n","color":"green","clickEvent":{"action":"run_command","value":"/trigger voteReward set 4"}}]
#execute as @a[scores={voteReward=1..}] run function pandamium:vote_reward
#scoreboard players set @a voteShop 0
#scoreboard players set @a voteReward 0

#function pandamium:donator_perks

#Playtime command
#scoreboard players enable @a showPlaytime
#execute as @a[scores={showPlaytime=1..}] run function pandamium:show_playtime
#scoreboard players set @a showPlaytime 0

#Total playtime
#scoreboard players add @a playtimeAdded 0
#execute as @a[scores={playtimeAdded=0}] run scoreboard players operation <totalPlaytime> variable += @s playtime
#scoreboard players set @a playtimeAdded 1
#execute as @a run scoreboard players add <totalPlaytime> variable 1
#execute if score <totalPlaytime> variable >= <ticksPerHour> variable run scoreboard players add <totalPlaytimeHours> variable 1
#execute if score <totalPlaytime> variable >= <ticksPerHour> variable run scoreboard players remove <totalPlaytime> variable 72000

#Manage player ids
scoreboard players add @a id 0
execute as @r[scores={id=0}] run scoreboard players operation @s id = <nextId> id
execute as @a if score @s id >= <nextId> id run scoreboard players add <nextId> id 1

#Scoreboard
#execute store result score LoadedEntities scoreboardInfo run execute if entity @e
#execute store result score LoadedItems scoreboardInfo run execute if entity @e[type=item]
#execute store result score PlayersOnline scoreboardInfo run execute if entity @e[type=player]

#Staff room
#scoreboard players enable @a staffRoom
#tp @a[scores={staffRoom=1..,moderationPerms=1..}] 0 52 8
#scoreboard players set @a staffRoom 0

#Discord command
#scoreboard players enable @a discord
#tellraw @a[scores={discord=1..}] [{"text":"[Pandamium] ","color":"dark_blue"},{"text":"Click ","color":"green"},{"text":"[here]","color":"aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/B4yMRTu"}},{"text":" to join our official ","color":"green"},{"text":"Discord","color":"aqua"},{"text":" server!","color":"green"}]
#scoreboard players set @a discord 0

#Kill trigger
#scoreboard players enable @a kill
#kill @a[scores={kill=1..}]
#scoreboard players set @a kill 0

#Update entitiesNerby score
#execute at @a positioned ~-256 0 ~-256 store result score @p entitiesNearby run execute if entity @e[dx=512,dy=256,dz=512]

#Performance counter
#scoreboard players add <performanceCounter> variable 1

#Random TP
scoreboard players set @a[x=-6,y=64,z=6,distance=..2] randomTp 1
scoreboard players set @a[x=-55,y=74,z=35,distance=..3] randomTp 1
scoreboard players set @a[x=22,y=68,z=46,distance=..3] randomTp 1
scoreboard players set @a[x=59,y=70,z=-13,distance=..3] randomTp 1
scoreboard players set @a[x=-9,y=65,z=-44,distance=..3] randomTp 1
spreadplayers 0 0 0 25000 false @a[scores={randomTp=1}]
scoreboard players add @a[x=-5000,y=0,z=-5000,dx=10000,dy=256,dz=10000,scores={randomTp=1}] randomTp 1
scoreboard players remove @a[scores={randomTp=1..}] randomTp 1

#Clear
#scoreboard players enable @a clear
#tellraw @a[scores={clear=1..}] [{"text":"Are you sure you want to clear your inventory? ","color":"red"},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger clear set -1"}}]
#clear @a[scores={clear=-1}]
#scoreboard players set @a clear 0

#Home stuff
#function pandamium:home

#Moderator stuff
#function pandamium:moderation

#Plots
function pandamium:plots

#TPA
#function pandamium:tpa