execute if score #event_mix_7 jkpof.int matches 1 store result score #event_plus_7 jkpof.int run random value 0..1
execute if score #event_plus_7 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.tellraw", color: "aqua"}]
execute if score #event_plus_7 jkpof.int matches 0 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name", color: "aqua"}
execute if score #event_plus_7 jkpof.int matches 0 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.subtitle", color: "green"}
execute if score #event_plus_7 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.tellraw", color: "aqua"}]
execute if score #event_plus_7 jkpof.int matches 1 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.name", color: "aqua"}
execute if score #event_plus_7 jkpof.int matches 1 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.subtitle", color: "green"}
scoreboard players set #event_time jkpof.int 50
