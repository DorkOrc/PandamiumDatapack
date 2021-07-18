#rtp
particle dust_color_transition 1 0.6 0.1 2 1 0.1 0 -12 87 13 1 1 1 0 2

#rodney
particle snowflake 23 100 6 2 3 2 0 10

#amethyst tower
particle witch -53 91 110 10 10 10 0 10

#crystal's floating island core
particle witch 77 76 -85 5 1 5 0 10

#enchanting room
particle dragon_breath -23 48 -92 1 1 1 0.1 3
particle enchant -23 48 -92 10 2 10 1 10

#witchtower basement
particle witch -60.0 57.5 117.0 5 1 5 0 10

#donator area waterfall
particle cloud -137.0 -31.75 11.0 0.75 -0.05 0.75 0.05 10

#centre teleport pad
particle portal 0 68 0 1 1 1 1 10
execute as @a[x=0,y=68,z=0,dx=0,dy=0,dz=0,gamemode=!spectator] run function pandamium:misc/teleport/spawn
execute as @a[x=0,y=32,z=0,dx=0,dy=0,dz=0,gamemode=!spectator] run function pandamium:misc/teleport/spawn

#staff world teleport pad
execute in pandamium:staff_world as @a[x=-6,y=63,z=8,dx=0,dy=3,dz=0] run function pandamium:misc/teleport/spawn
