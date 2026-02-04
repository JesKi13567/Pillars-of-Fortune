setblock ~ ~2 ~ barrier strict
setblock ~1 ~1 ~ barrier strict
setblock ~-1 ~1 ~ barrier strict
setblock ~ ~1 ~1 barrier strict
setblock ~ ~1 ~-1 barrier strict
setblock ~1 ~ ~ barrier strict
setblock ~-1 ~ ~ barrier strict
setblock ~ ~ ~1 barrier strict
setblock ~ ~ ~-1 barrier strict
execute if score #before_start jkpof.int matches 0 run function jkpof:state/1/before_start/unlock
