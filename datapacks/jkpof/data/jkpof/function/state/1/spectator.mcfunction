scoreboard players set @s jkpof.id -1
scoreboard players set @s jkpof.state 99
scoreboard players reset @s jkpof.leavegame
clear @s
gamemode spectator @s
tp @s @r[scores={jkpof.state=2}]
team join jkpof.spec
tellraw @s [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.spectator.by.not_in", color: "green"}]
