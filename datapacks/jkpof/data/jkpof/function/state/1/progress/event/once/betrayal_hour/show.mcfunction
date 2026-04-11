scoreboard players set #event_betrayal_hour.status jkpof.int 1
scoreboard players set @r[scores={jkpof.state=2}] jkpof.betrayal 1
team join jkpof.allies @a[scores={jkpof.state=2..3}]
team join jkpof.traitor @a[scores={jkpof.betrayal=1}]
effect give @a[scores={jkpof.betrayal=1}] resistance 30 1

tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.tellraw.p1", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.tellraw.p2", color: "aqua"}, {selector: "@p[scores={jkpof.betrayal=1}]"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.subtitle", color: "green"}
