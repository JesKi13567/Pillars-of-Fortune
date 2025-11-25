scoreboard players set @a jkpof.state 1
tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.start.force", color: "aqua"}]
function jkpof:state/1/enter
scoreboard players set #test_mode jkpof.int 1
effect give @a resistance infinite 9 true
effect give @a saturation infinite 0 true
effect give @a fire_resistance infinite 0 true
effect give @a water_breathing infinite 0 true
