setblock ~ ~2 ~ glass
fill ~ ~ ~1 ~ ~1 ~1 glass
fill ~ ~ ~-1 ~ ~1 ~-1 glass
fill ~1 ~ ~ ~1 ~1 ~ glass
fill ~-1 ~ ~ ~-1 ~1 ~ glass
execute if score #before_start jkpof.int matches 0 run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute if score #before_start jkpof.int matches 0 run setblock ~ ~-1 ~ glass strict
