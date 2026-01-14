scoreboard players reset #start_flag jkpof.int
execute as @a at @s run playsound entity.villager.no
execute unless score #ctrl_team jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.cancel.lack.players", color: "red"}]
execute if score #ctrl_team jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.cancel.lack.teams", color: "red"}]
