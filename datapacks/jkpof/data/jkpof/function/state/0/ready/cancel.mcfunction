scoreboard players reset #start_flag jkpof.int
playsound entity.villager.no block @a 0 1000000 0 10000000
execute unless score #ctrl_team jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.cancel.lack.players", color: "red"}]
execute if score #ctrl_team jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.cancel.lack.teams", color: "red"}]
