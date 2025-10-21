setblock ~ ~2 ~ glass
fill ~ ~ ~1 ~ ~1 ~1 glass
fill ~ ~ ~-1 ~ ~1 ~-1 glass
fill ~1 ~ ~ ~1 ~1 ~ glass
fill ~-1 ~ ~ ~-1 ~1 ~ glass
execute unless score #before_start jkpof.int matches 1.. run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
