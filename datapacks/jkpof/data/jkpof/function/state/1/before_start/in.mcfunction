fill ~-1 ~ ~-1 ~1 ~2 ~1 barrier outline
execute if score #before_start jkpof.int matches 0 run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute if score #before_start jkpof.int matches 0 run setblock ~ ~-1 ~ glass strict
