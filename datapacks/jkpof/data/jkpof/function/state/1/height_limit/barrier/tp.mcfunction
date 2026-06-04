$tp @s 0 ~$(sb)2 0
$scoreboard players $(op) #height_m$(m) jkpof.int 2

data modify entity @s Glowing set value true
scoreboard players remove @s jkpof.int 1
execute if score @s jkpof.int matches 0 run function jkpof:state/1/height_limit/barrier/air
