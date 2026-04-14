scoreboard players set @s jkpof.id -1
scoreboard players reset @s jkpof.leavegame
gamemode spectator @s
team join jkpof.spec
tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.spectator.by.not_in", color: "green"}]
