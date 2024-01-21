# arguments: old, index

#> HOMES

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.1
$execute if score $(old) home_1_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.1 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_1_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.1.xyzd[0] int 1 run scoreboard players get $(old) home_1_x
$execute if score $(old) home_1_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.1.xyzd[1] int 1 run scoreboard players get $(old) home_1_y
$execute if score $(old) home_1_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.1.xyzd[2] int 1 run scoreboard players get $(old) home_1_z
$execute if score $(old) home_1_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.1.xyzd[3] int 1 run scoreboard players get $(old) home_1_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.2
$execute if score $(old) home_2_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.2 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_2_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.2.xyzd[0] int 1 run scoreboard players get $(old) home_2_x
$execute if score $(old) home_2_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.2.xyzd[1] int 1 run scoreboard players get $(old) home_2_y
$execute if score $(old) home_2_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.2.xyzd[2] int 1 run scoreboard players get $(old) home_2_z
$execute if score $(old) home_2_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.2.xyzd[3] int 1 run scoreboard players get $(old) home_2_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.3
$execute if score $(old) home_3_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.3 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_3_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.3.xyzd[0] int 1 run scoreboard players get $(old) home_3_x
$execute if score $(old) home_3_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.3.xyzd[1] int 1 run scoreboard players get $(old) home_3_y
$execute if score $(old) home_3_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.3.xyzd[2] int 1 run scoreboard players get $(old) home_3_z
$execute if score $(old) home_3_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.3.xyzd[3] int 1 run scoreboard players get $(old) home_3_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.4
$execute if score $(old) home_4_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.4 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_4_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.4.xyzd[0] int 1 run scoreboard players get $(old) home_4_x
$execute if score $(old) home_4_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.4.xyzd[1] int 1 run scoreboard players get $(old) home_4_y
$execute if score $(old) home_4_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.4.xyzd[2] int 1 run scoreboard players get $(old) home_4_z
$execute if score $(old) home_4_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.4.xyzd[3] int 1 run scoreboard players get $(old) home_4_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.5
$execute if score $(old) home_5_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.5 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_5_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.5.xyzd[0] int 1 run scoreboard players get $(old) home_5_x
$execute if score $(old) home_5_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.5.xyzd[1] int 1 run scoreboard players get $(old) home_5_y
$execute if score $(old) home_5_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.5.xyzd[2] int 1 run scoreboard players get $(old) home_5_z
$execute if score $(old) home_5_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.5.xyzd[3] int 1 run scoreboard players get $(old) home_5_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.6
$execute if score $(old) home_6_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.6 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_6_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.6.xyzd[0] int 1 run scoreboard players get $(old) home_6_x
$execute if score $(old) home_6_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.6.xyzd[1] int 1 run scoreboard players get $(old) home_6_y
$execute if score $(old) home_6_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.6.xyzd[2] int 1 run scoreboard players get $(old) home_6_z
$execute if score $(old) home_6_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.6.xyzd[3] int 1 run scoreboard players get $(old) home_6_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.7
$execute if score $(old) home_7_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.7 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_7_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.7.xyzd[0] int 1 run scoreboard players get $(old) home_7_x
$execute if score $(old) home_7_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.7.xyzd[1] int 1 run scoreboard players get $(old) home_7_y
$execute if score $(old) home_7_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.7.xyzd[2] int 1 run scoreboard players get $(old) home_7_z
$execute if score $(old) home_7_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.7.xyzd[3] int 1 run scoreboard players get $(old) home_7_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.8
$execute if score $(old) home_8_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.8 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_8_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.8.xyzd[0] int 1 run scoreboard players get $(old) home_8_x
$execute if score $(old) home_8_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.8.xyzd[1] int 1 run scoreboard players get $(old) home_8_y
$execute if score $(old) home_8_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.8.xyzd[2] int 1 run scoreboard players get $(old) home_8_z
$execute if score $(old) home_8_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.8.xyzd[3] int 1 run scoreboard players get $(old) home_8_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.9
$execute if score $(old) home_9_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.9 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_9_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.9.xyzd[0] int 1 run scoreboard players get $(old) home_9_x
$execute if score $(old) home_9_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.9.xyzd[1] int 1 run scoreboard players get $(old) home_9_y
$execute if score $(old) home_9_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.9.xyzd[2] int 1 run scoreboard players get $(old) home_9_z
$execute if score $(old) home_9_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.9.xyzd[3] int 1 run scoreboard players get $(old) home_9_d

$data remove storage pandamium.db.players:data entries[$(index)].data.homes.10
$execute if score $(old) home_10_x matches -2147483648.. run data modify storage pandamium.db.players:data entries[$(index)].data.homes.10 set value {xyzd:[I;0,0,0,0]}
$execute if score $(old) home_10_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.10.xyzd[0] int 1 run scoreboard players get $(old) home_10_x
$execute if score $(old) home_10_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.10.xyzd[1] int 1 run scoreboard players get $(old) home_10_y
$execute if score $(old) home_10_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.10.xyzd[2] int 1 run scoreboard players get $(old) home_10_z
$execute if score $(old) home_10_x matches -2147483648.. store result storage pandamium.db.players:data entries[$(index)].data.homes.10.xyzd[3] int 1 run scoreboard players get $(old) home_10_d
