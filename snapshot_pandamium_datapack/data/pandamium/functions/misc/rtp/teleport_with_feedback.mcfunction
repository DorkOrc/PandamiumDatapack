function pandamium:misc/rtp/teleport
tellraw @a[scores={send_extra_debug_info=1}] [{"text":"[","color":"gray","italic":true},{"selector":"@s"},": Used RTP; rolled ",{"score":{"name":"<i>","objective":"variable"}}," times]"]
