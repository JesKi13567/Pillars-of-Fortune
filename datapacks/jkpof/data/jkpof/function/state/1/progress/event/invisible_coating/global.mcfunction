execute if score #event_time jkpof.int matches 1.. run function jkpof:state/1/progress/event/invisible_coating/in/all
execute if score #event_time jkpof.int matches 0 as @a[scores={jkpof.state=2}] at @s run function jkpof:state/1/progress/event/invisible_coating/not/all
execute if score #event_time jkpof.int matches 0 run kill @e[type=item_display, tag=jkpof_invisile_recover]
execute if score #event_time jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
