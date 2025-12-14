forceload add -32 -32 32 32
scoreboard objectives add jkpof.int dummy
execute if score #loaded jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.datapack.loaded", color: "green"}]
execute unless score #loaded jkpof.int matches 1 run function jkpof:init

schedule function jkpof:ticks/tick1 1t replace
schedule function jkpof:ticks/sec1 2t replace
