execute if score #event_time jkpof.int matches 1.. as @a[scores={jkpof.state=2}, gamemode=survival] at @s align xyz positioned ~.5 ~-.7 ~.5 unless block ~ ~ ~ #replaceable unless entity @e[type=marker, tag=jkpof_lava_marker, distance=...1] run summon marker ~ ~ ~ {Tags: ["jkpof", "jkpof_lava_marker", "jkpof_lava_marker_new"]}
execute if score #event_time jkpof.int matches 0 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "熔岩地板", color: "aqua"}, "阶段结束。"]

execute as @e[type=marker, tag=jkpof_lava_marker] at @s run function jkpof:state/1/progress/event/lava/block
