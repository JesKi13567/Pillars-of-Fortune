execute store result score #event_prop_supply.type jkpof.int run random value 0..9
execute if score #event_prop_supply.type jkpof.int matches 0..7 run scoreboard players add #event_prop_supply.count.prop jkpof.int 1
execute if score #event_prop_supply.type jkpof.int matches 8 run scoreboard players add #event_prop_supply.count.enchanted_book jkpof.int 1
execute if score #event_prop_supply.type jkpof.int matches 9 run scoreboard players add #event_prop_supply.count.potion jkpof.int 1
execute store result score #event_prop_supply.type jkpof.int run random value 0..9
execute if score #event_prop_supply.type jkpof.int matches 0..7 run scoreboard players add #event_prop_supply.count.prop jkpof.int 1
execute if score #event_prop_supply.type jkpof.int matches 8 run scoreboard players add #event_prop_supply.count.enchanted_book jkpof.int 1
execute if score #event_prop_supply.type jkpof.int matches 9 run scoreboard players add #event_prop_supply.count.potion jkpof.int 1
execute store result score #event_prop_supply.type jkpof.int run random value 0..9
execute if score #event_prop_supply.type jkpof.int matches 0..7 run scoreboard players add #event_prop_supply.count.prop jkpof.int 1
execute if score #event_prop_supply.type jkpof.int matches 8 run scoreboard players add #event_prop_supply.count.enchanted_book jkpof.int 1
execute if score #event_prop_supply.type jkpof.int matches 9 run scoreboard players add #event_prop_supply.count.potion jkpof.int 1

tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.tellraw", color: "aqua"}]
title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.name", color: "aqua"}
title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.prop_supply.subtitle", color: "green"}
