execute store result score #event_prop_supply.type jkpof.int run random value 1..5
execute if score #event_prop_supply.type jkpof.int matches 1..3 run scoreboard players add #event_prop_supply.count.prop jkpof.int 3
execute if score #event_prop_supply.type jkpof.int matches 4 run scoreboard players add #event_prop_supply.count.enchanted_book jkpof.int 3
execute if score #event_prop_supply.type jkpof.int matches 5 run scoreboard players add #event_prop_supply.count.potion jkpof.int 3

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.subtitle", color: "green"}
