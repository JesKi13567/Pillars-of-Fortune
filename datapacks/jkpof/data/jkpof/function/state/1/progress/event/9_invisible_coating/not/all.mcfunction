execute if score #event_plus_9 jkpof.int matches 0 as @e[type=item] run function jkpof:state/1/progress/event/9_invisible_coating/not/item {entity: '@s', i: 'I'}
execute if score #event_plus_9 jkpof.int matches 0 run summon item_display 0 0 0 {Tags: ["jkpof_invisile_recover"]}
execute if score #event_plus_9 jkpof.int matches 0 as @a[scores={jkpof.state=2}] run function jkpof:state/1/progress/event/9_invisible_coating/not/player
execute if score #event_plus_9 jkpof.int matches 0 as @e[type=!#jkpof:safe, type=!item] run function jkpof:state/1/progress/event/9_invisible_coating/not/mob
execute if score #event_plus_9 jkpof.int matches 0 run kill @e[type=item_display, tag=jkpof_invisile_recover]
execute if score #event_plus_9 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.invisible_coating.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
execute if score #event_plus_9 jkpof.int matches 1 as @e[type=item] run data modify entity @s Glowing set value false
execute if score #event_plus_9 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.invisible_coating.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
