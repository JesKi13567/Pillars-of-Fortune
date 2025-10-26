execute if score #event_time jkpof.int matches 0.. as @e[type=chicken, tag=jkpof_chicken, limit=1] at @s run function jkpof:state/1/progress/event/bomb_chicken/go

execute if score #event_time jkpof.int matches 0 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "飞鸡来袭", color: "aqua"}, "阶段结束。"]
