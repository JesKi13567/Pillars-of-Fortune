$tp @s 0 ~$(symbol)2 0
$execute store result score #height_$(m) jkpof.int run data get entity @s Pos[1]

data modify entity @s Glowing set value true
scoreboard players remove @s jkpof.int 1
execute if score @s jkpof.int matches 0 run function jkpof:state/1/height_limit/barrier_air
