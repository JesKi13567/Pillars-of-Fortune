scoreboard players set @a jkpof.state 1
execute if score #ctrl_team jkpof.int matches 1..2 run scoreboard players set @a jkpof.team 1
execute if score #ctrl_team jkpof.int matches 1..2 run team join jkpof.red @a
tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.start.force", color: "aqua"}]
function jkpof:state/1/enter
scoreboard players set #test_mode jkpof.int 1
effect give @a resistance infinite 9 true
effect give @a saturation infinite 0 true
effect give @a fire_resistance infinite 0 true
effect give @a water_breathing infinite 0 true
