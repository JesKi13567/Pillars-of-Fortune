execute if score #event_mix_10 jkpof.int matches 1 store result score #event_plus_10 jkpof.int run random value 0..1
execute if score #event_plus_10 jkpof.int matches 0 run team modify jkpof.traitor color red
execute if score #event_plus_10 jkpof.int matches 1 run team modify jkpof.traitor color green

scoreboard players set #event_betrayal_hour.status jkpof.int 1
scoreboard players set @r[scores={jkpof.state=2}] jkpof.betrayal 1
team join jkpof.allies @a[scores={jkpof.state=2}]
team join jkpof.traitor @a[scores={jkpof.betrayal=1}]
effect give @a[scores={jkpof.betrayal=1}] resistance 30 0 true
effect give @a[scores={jkpof.betrayal=1}] strength 30 0 true

execute if score #event_plus_10 jkpof.int matches 0 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.name", color: "aqua"}
execute if score #event_plus_10 jkpof.int matches 0 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.subtitle", color: "green"}
execute if score #event_plus_10 jkpof.int matches 0 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.tellraw.p1", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.tellraw", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.betrayal_hour.tellraw.p2", color: "aqua"}, {selector: "@p[scores={jkpof.betrayal=1}]"}]
execute if score #event_plus_10 jkpof.int matches 1 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.name", color: "aqua"}
execute if score #event_plus_10 jkpof.int matches 1 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.subtitle", color: "green"}
execute if score #event_plus_10 jkpof.int matches 1 run tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.tellraw", color: "aqua"}, "\n", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.next_reset.tellraw", color: "aqua"}]
execute if score #event_plus_10 jkpof.int matches 1 run tellraw @a[scores={jkpof.betrayal=1}] [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.self", color: "gold"}]
execute if score #event_plus_10 jkpof.int matches 1 run tellraw @a[gamemode=spectator] ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.spec", color: "aqua"}, {selector: "@p[scores={jkpof.betrayal=1}]"}]
