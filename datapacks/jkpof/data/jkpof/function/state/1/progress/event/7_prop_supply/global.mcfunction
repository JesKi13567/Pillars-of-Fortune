execute if score #event_plus_7 jkpof.int matches 0 store result score #event_prop_supply.type jkpof.int run random value 0..9
execute if score #event_plus_7 jkpof.int matches 0 if score #ctrl_game_mode jkpof.int matches 0 if score #event_prop_supply.type jkpof.int matches 0..7 run scoreboard players add #event_prop_supply.count.prop jkpof.int 1
execute if score #event_plus_7 jkpof.int matches 0 if score #ctrl_game_mode jkpof.int matches 0 if score #event_prop_supply.type jkpof.int matches 8 run scoreboard players add #event_prop_supply.count.enchanted_book jkpof.int 1
execute if score #event_plus_7 jkpof.int matches 0 if score #ctrl_game_mode jkpof.int matches 0 if score #event_prop_supply.type jkpof.int matches 9 run scoreboard players add #event_prop_supply.count.potion jkpof.int 1
execute if score #event_plus_7 jkpof.int matches 0 if score #ctrl_game_mode jkpof.int matches 1 if score #event_prop_supply.type jkpof.int matches 0..7 run scoreboard players add @a[scores={jkpof.state=2}] jkpof.item.is_prop 1
execute if score #event_plus_7 jkpof.int matches 0 if score #ctrl_game_mode jkpof.int matches 1 if score #event_prop_supply.type jkpof.int matches 8 run scoreboard players add @a[scores={jkpof.state=2}] jkpof.item.extra.enchanted_book 1
execute if score #event_plus_7 jkpof.int matches 0 if score #ctrl_game_mode jkpof.int matches 1 if score #event_prop_supply.type jkpof.int matches 9 run scoreboard players add @a[scores={jkpof.state=2}] jkpof.item.extra.potion 1
execute if score #event_plus_7 jkpof.int matches 1 store result storage jk:pof data.prop_supply.x int 1 run random value -3..3
execute if score #event_plus_7 jkpof.int matches 1 store result storage jk:pof data.prop_supply.z int 1 run random value -3..3
execute if score #event_plus_7 jkpof.int matches 1 run scoreboard players reset #event_prop_supply.order jkpof.int
execute if score #event_plus_7 jkpof.int matches 1 store result score #event_prop_supply.type jkpof.int run random value 0..9
execute if score #event_plus_7 jkpof.int matches 1 if score #event_prop_supply.type jkpof.int matches 0..7 store result score #event_prop_supply.order jkpof.int run random value 1..23
execute if score #event_plus_7 jkpof.int matches 1 at @a[scores={jkpof.state=2}] align xz run function jkpof:state/1/progress/event/7_prop_supply/pos with storage jk:pof data.prop_supply
execute if score #event_plus_7 jkpof.int matches 1 if score #event_time jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
