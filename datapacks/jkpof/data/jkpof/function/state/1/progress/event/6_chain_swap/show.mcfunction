tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {text: "3", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.seconds", color: "white"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.later", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.tellraw.p1", color: "aqua"}]
execute if score #event_plus_6 jkpof.int matches 0 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.name", color: "aqua"}
execute if score #event_plus_6 jkpof.int matches 0 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.chain_swap.subtitle", color: "green"}
execute if score #event_plus_6 jkpof.int matches 1 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.chain_swap.name", color: "aqua"}
execute if score #event_plus_6 jkpof.int matches 1 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.chain_swap.subtitle", color: "green"}
scoreboard players set #event_time jkpof.int 100
