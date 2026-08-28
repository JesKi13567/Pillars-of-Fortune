execute store result storage jk:pof data.prop_supply.x int 1 run random value -3..3
execute store result storage jk:pof data.prop_supply.z int 1 run random value -3..3
scoreboard players reset #event_prop_supply.order jkpof.int
execute store result score #event_prop_supply.type jkpof.int run random value 0..9
execute if score #event_prop_supply.type jkpof.int matches 0..7 store result score #event_prop_supply.order jkpof.int run random value 1..22
execute at @a[scores={jkpof.state=2}] align xz run function jkpof:state/1/progress/event/7_prop_supply/pos with storage jk:pof data.prop_supply
execute if score #event_time jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.prop_supply.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
