#Normal clouds
execute if score <storm> variable matches 0..100 run particle cloud ~ ~3 ~ 0.5 0 0.5 0.001 5 
execute if score <storm> variable matches 0..100 run particle cloud ~ ~3.3 ~ 0.4 0 0.4 0.001 5 

#Rain
execute if score <storm> variable matches 100.. run particle minecraft:falling_water ~ ~2.6 ~ 0.5 0 0.5 0.01 5 

#Storm clouds
execute if score <storm> variable matches 100..149 run particle dust 0.514 0.49 0.49 3 ~ ~3 ~ 0.7 0 0.7 0.001 10 
execute if score <storm> variable matches 100..149 run particle dust 0.514 0.49 0.49 3 ~ ~3.4 ~ 0.7 0 0.7 0.001 10 
execute if score <storm> variable matches 150..199 run particle dust 0.294 0.286 0.286 3 ~ ~3 ~ 0.7 0 0.7 0.001 10 
execute if score <storm> variable matches 150..199 run particle dust 0.294 0.286 0.286 3 ~ ~3.4 ~ 0.7 0 0.7 0.001 10 
execute if score <storm> variable matches 200.. run particle dust 0.2 0.196 0.196 3 ~ ~3 ~ 0.7 0 0.7 0.001 10 
execute if score <storm> variable matches 200.. run particle dust 0.2 0.196 0.196 3 ~ ~3.4 ~ 0.7 0 0.7 0.001 10 

#Lightning - Bolt 1
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.80 ^2.70 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.85 ^2.60 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.90 ^2.50 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.95 ^2.40 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.00 ^2.30 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.00 ^2.30 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.05 ^2.20 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.10 ^2.10 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.15 ^2.00 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.20 ^1.90 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.10 ^1.80 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.00 ^1.70 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.95 ^1.60 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.90 ^1.50 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.85 ^1.40 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.80 ^1.30 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.75 ^1.20 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.70 ^1.10 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.90 ^1.40 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^0.95 ^1.30 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.00 ^1.20 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.05 ^1.10 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.10 ^1.00 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.15 ^0.90 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.20 ^0.80 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.25 ^0.70 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.25 ^0.60 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.20 ^0.50 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.15 ^0.40 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.10 ^0.30 ^1 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 1 rotated ~ 0 run particle wax_on ^1.05 ^0.20 ^1 0.01 0 0.01 0 2 

#Bold 2
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.80 ^2.70 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.85 ^2.60 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.90 ^2.50 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.95 ^2.40 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.00 ^2.30 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.05 ^2.20 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.10 ^2.10 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.85 ^2.50 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.75 ^2.40 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.65 ^2.30 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.55 ^2.20 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.45 ^2.10 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.35 ^2.00 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.05 ^2.10 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.00 ^2.00 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.95 ^1.90 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.90 ^1.80 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.85 ^1.70 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.80 ^1.60 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.75 ^1.50 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.70 ^1.40 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.85 ^1.70 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.95 ^1.60 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.05 ^1.50 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.15 ^1.40 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.25 ^1.30 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.35 ^1.20 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.45 ^1.10 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.55 ^1.00 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.65 ^0.90 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.75 ^0.80 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.25 ^1.20 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.15 ^1.10 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.05 ^1.00 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.95 ^0.90 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.85 ^0.80 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.85 ^0.80 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.95 ^0.70 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.05 ^0.60 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.15 ^0.50 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.25 ^0.40 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.15 ^0.40 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-1.05 ^0.30 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.95 ^0.20 ^-0.80 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 3 rotated ~ 0 run particle wax_on ^-0.90 ^0.10 ^-0.80 0.01 0 0.01 0 2 

#Bolt 3
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.20 ^2.70 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.14 ^2.60 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.07 ^2.50 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.94 ^2.40 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.85 ^2.30 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.72 ^2.20 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.64 ^2.10 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.94 ^2.40 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.04 ^2.30 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.14 ^2.20 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.24 ^2.10 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.34 ^2.00 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.34 ^1.90 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.34 ^1.80 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.34 ^1.70 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.34 ^1.60 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.34 ^1.50 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.34 ^1.50 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.44 ^1.40 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.54 ^1.30 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.64 ^1.20 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.74 ^1.10 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.84 ^1.00 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.54 ^1.20 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.44 ^1.10 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^1.34 ^1.00 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.65 ^2.10 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.70 ^2.00 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.75 ^1.90 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.80 ^1.80 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.85 ^1.70 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.90 ^1.60 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.80 ^1.80 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.75 ^1.70 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.70 ^1.60 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.65 ^1.50 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.60 ^1.40 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.55 ^1.30 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.50 ^1.20 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.55 ^1.20 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.60 ^1.10 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.68 ^1.00 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.75 ^0.90 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.83 ^0.80 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.89 ^0.70 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.73 ^0.70 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.63 ^0.60 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.53 ^0.50 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.43 ^0.40 ^-0.50 0.01 0 0.01 0 2 
execute if score <storm> variable matches 200.. if score <lightning_bolt> variable matches 6 rotated ~ 0 run particle wax_on ^0.33 ^0.30 ^-0.50 0.01 0 0.01 0 2 