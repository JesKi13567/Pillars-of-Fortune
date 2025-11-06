scoreboard players remove @s jkpof.int 1
tp @s 0 ~-2 0
execute store result score #height_max jkpof.int run data get entity @s Pos[1]
execute if score @s jkpof.int matches 0 run function jkpof:state/1/height_limit/barrier_air
