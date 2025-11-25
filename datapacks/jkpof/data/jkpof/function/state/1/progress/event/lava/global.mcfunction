execute if score #event_time jkpof.int matches 1.. as @a[scores={jkpof.state=2}, gamemode=survival] at @s align xyz positioned ~.5 ~-.7 ~.5 unless block ~ ~ ~ #replaceable unless entity @e[type=marker, tag=jkpof_lava_marker, distance=...1] run summon marker ~ ~ ~ {Tags: ["jkpof", "jkpof_lava_marker", "jkpof_lava_marker_new"]}
execute if score #event_time jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.event.lava.name", color: "aqua"}, {storage: "jk:pof", nbt: "txt.event.global.stage_ended"}]

execute as @e[type=marker, tag=jkpof_lava_marker] at @s run function jkpof:state/1/progress/event/lava/block
