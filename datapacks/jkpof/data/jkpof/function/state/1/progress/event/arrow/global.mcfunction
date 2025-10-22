execute if score #event_time jkpof.int matches 1..60 as @a[scores={jkpof.state=2}, gamemode=survival] at @s run function jkpof:state/1/progress/event/arrow/summon
execute if score #event_time jkpof.int matches 0 run tellraw @a [{text: "【幸运之柱】", color: "yellow"}, {text: "万箭齐发", color: "aqua"}, "阶段结束。"]

execute as @e[type=arrow, tag=jkpof_arrow] at @s if block ~ ~ ~ water run kill @s
kill @e[type=arrow, tag=jkpof_arrow, nbt={inGround: true}]
