execute as @e[type=item] run function jkpof:state/1/progress/event/invisible_coating/not/item {entity: '@s', i: 'I'}

summon item_display 0 0 0 {Tags: ["jkpof_invisile_recover"]}
execute as @a[scores={jkpof.state=2}] run function jkpof:state/1/progress/event/invisible_coating/not/player
execute as @e[type=!#jkpof:safe, type=!item] run function jkpof:state/1/progress/event/invisible_coating/not/mob
kill @e[type=item_display, tag=jkpof_invisile_recover]

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
