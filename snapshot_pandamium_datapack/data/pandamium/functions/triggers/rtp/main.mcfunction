execute store result score <restricted> variable run function pandamium:utils/triggers/check_forced_restriction {trigger:"rtp",name:"RTP"}
execute if score <restricted> variable matches 0 run function pandamium:triggers/rtp/logic

scoreboard players reset @s rtp
scoreboard players enable @s rtp
