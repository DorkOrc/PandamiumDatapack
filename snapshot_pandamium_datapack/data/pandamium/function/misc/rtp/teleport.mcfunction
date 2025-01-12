function pandamium:impl/teleport/random/main
tellraw @a[scores={send_extra_debug_info=2}] [{text:"[",color:"gray",italic:true},{selector:"@s"},{text:": Used random teleporter; rolled "},{score:{name:"<i>",objective:"variable"}},{text:" times]"}]
